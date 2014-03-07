//
//  DSYRTMPPlayer.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/3/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYRTMPPlayer.h"

@interface DSYRTMPPlayer ()
{
    @public
    AudioStreamBasicDescription audioStreamBasicDescription;
    AudioFileStreamID           streamId;
    
    // Audio Queue
    AudioQueueRef audioQueue;
    
    // Playback params
    BOOL isPaused;
    NSTimer *playTimer;
}

@end

void StreamPropertyChangeIsRunning(void *                  inUserData,
                                   AudioQueueRef           inAQ,
                                   AudioQueuePropertyID    inID)
{
}

void StreamAudioQueueOutputCallback(void *inClientData,
                                    AudioQueueRef inAQ,
                                    AudioQueueBufferRef inBuffer)
{
}

void StreamPropertyListenerProc(void                        *inClientData,
                                AudioFileStreamID			inAudioFileStream,
                                AudioFileStreamPropertyID	inPropertyID,
                                UInt32                      *ioFlags)
{
    DSYRTMPPlayer *self = (__bridge DSYRTMPPlayer *)inClientData;
    if( inPropertyID == kAudioFileStreamProperty_ReadyToProducePackets )
    {
        
        // We want to get a list of formats this audio stream supports.
        // Before we can that, we need to find the size of data we're trying to get.
        OSStatus callbackStatus = noErr;
        UInt32 formatListSize;
        Boolean b;
        AudioFileStreamGetPropertyInfo(self->streamId,
                                       kAudioFileStreamProperty_FormatList,
                                       &formatListSize,
                                       &b);
        
        // now get the format data
        NSMutableData *listData = [NSMutableData dataWithLength:formatListSize];
        OSStatus status = AudioFileStreamGetProperty(self->streamId,
                                                     kAudioFileStreamProperty_FormatList,
                                                     &formatListSize,
                                                     [listData mutableBytes]);
        AudioFormatListItem *formatList = [listData mutableBytes];
        
        AudioStreamBasicDescription asbd;
        // The formatList property isn't always supported, so an error isn't unexpected here.
        // Therefore, we won't call VERIFY_STATUS on this status code.
        if (status == noErr)
        {
            NSLog(@"format list");
            
            // now see which format this device supports best
            UInt32 chosen;
            UInt32 chosenSize = sizeof(UInt32);
            int formatCount = formatListSize/sizeof(AudioFormatListItem);
            status = AudioFormatGetProperty ('fpfl',
                                             formatListSize,
                                             formatList,
                                             &chosenSize,
                                             &chosen);
            if (status != noErr)
            {
                asbd = formatList[chosen].mASBD;
            }
            else
            {
                // the docs tell us to grab the last in the list because it's most compatible
                asbd = formatList[formatCount - 1].mASBD;
            }
        }
        else
        {
            // fall back to the stream's DataFormat
            UInt32 descriptionSize = sizeof(AudioStreamBasicDescription);
            callbackStatus = AudioFileStreamGetProperty(self->streamId,
                                                        kAudioFileStreamProperty_DataFormat, 
                                                        &descriptionSize, 
                                                        &asbd);
            if (callbackStatus != noErr) {
                return;
            }
        }
        
        // Setup the audio queue
        self->audioStreamBasicDescription = asbd;
        status = AudioQueueNewOutput(&asbd,
                                     StreamAudioQueueOutputCallback,
                                     (__bridge void *)(self),
                                     NULL,
                                     NULL,
                                     0,
                                     &self->audioQueue);
        
        // Print asbd
        [self printASBD:asbd];
        
        if (status != noErr) {
            NSLog(@"failed to create audio queue");
            return;
        }
        
        // Start the queue
        [self startQueue];
        
        // Add incase you want a listener for when the queue stops
        [self checkResult:AudioQueueAddPropertyListener (self->audioQueue,
                                                            kAudioQueueProperty_IsRunning,
                                                            StreamPropertyChangeIsRunning,
                                                            (__bridge void *)(self))
                   operation:"Failed to add property listener for kAudioQueueProperty_IsRunning"];
        
    }
}

void StreamPacketsProc(void                             *inClientData,
                       UInt32							inNumberBytes,
                       UInt32							inNumberPackets,
                       const void                       *inInputData,
                       AudioStreamPacketDescription     *inPacketDescriptions)
{
    DSYRTMPPlayer *self = (__bridge DSYRTMPPlayer *)inClientData;
    AudioQueueBufferRef bufferRef;
    
    // allocate buffer with data
    [self checkResult:AudioQueueAllocateBufferWithPacketDescriptions(self->audioQueue,
                                                                        inNumberBytes,
                                                                        inNumberPackets,
                                                                        &bufferRef)
               operation:"Failed to allocate buffer with packet descriptions"];
    
    memcpy(bufferRef->mAudioData, inInputData, inNumberBytes);
    bufferRef->mAudioDataByteSize = inNumberBytes;
    memcpy(bufferRef->mPacketDescriptions, inPacketDescriptions, sizeof(AudioStreamPacketDescription) * inNumberPackets);
    bufferRef->mPacketDescriptionCount = inNumberPackets;
    
    // if we're still good then enqueue the buffer
    AudioQueueEnqueueBuffer(self->audioQueue,
                            bufferRef,
                            0,
                            NULL);
}

@implementation DSYRTMPPlayer
@synthesize track = _track;

#pragma mark - Shared Instance
+(instancetype)sharedPlayer
{
    static DSYRTMPPlayer *_rtmpPlayer = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _rtmpPlayer = [[DSYRTMPPlayer alloc] init];
    });
    return _rtmpPlayer;
}

#pragma mark - Using The Audio Player

-(void)playTrack:(DSYTrack *)track
{
    // Cache track
    _track = track;
    
    // Notify errbody of the new track
    dispatch_async(dispatch_get_main_queue(), ^{
        [[NSNotificationCenter defaultCenter] postNotificationName:kDSYRTMPPlayerNotificationHasNewTrack
                                                            object:track];
    });
    
    // Get the stream info for the track
    [track getRTMPStreamWithCompletion:^(DSYRTMPObject *rtmpStreamInfo, NSError *error) {
        if( error )
        {
            NSLog(@"API error fetching track, refresh token");
        }
        else
        {
            
            // Perform playback with this RTMP stream's info
            NSLog(@"Perform playback for track with info: %@",rtmpStreamInfo);
        
        }
    }];
}

#pragma mark - Setup
-(void)_setupAudioEngine
{
    if( streamId )
    {
        [self checkResult:AudioFileStreamClose(streamId)
                   operation:"Failed to close AudioFileStreamID"];
    }
    
    // Open the AudioFileStreamID
    [self checkResult:AudioFileStreamOpen((__bridge void *)(self),
                                             StreamPropertyListenerProc,
                                             StreamPacketsProc,
                                             kAudioFileMP3Type,
                                             &streamId)
               operation:"AudioFileStreamOpen failed to open stream"];
}

#pragma mark - Play Timer
-(void)_resetPlayTimer
{
    // Stop
    if( playTimer )
    {
        [playTimer invalidate];
        playTimer = nil;
    }
    
    // Start
    playTimer = [NSTimer scheduledTimerWithTimeInterval:0.5
                                                 target:self
                                               selector:@selector(_sendPlayPositionNotification)
                                               userInfo:nil
                                                repeats:YES];
}
                 
-(void)_sendPlayPositionNotification
 {
     // Check if the song has finished
     if( [self _hasFinished] )
     {
         // Invalidate timer
         [playTimer invalidate];
         playTimer = nil;
         
         // EOF
         [self _tryPlayingNextSongInQueue];
         
         // Send the EOF notification
         [[NSNotificationCenter defaultCenter] postNotificationName:kDSYRTMPPlayerNotificationReachedEndOfFile
                                                             object:self];
     }
     else
     {
         // Send the updated position notification
         [[NSNotificationCenter defaultCenter] postNotificationName:kDSYRTMPPlayerNotificationUpdatedPosition
                                                             object:self];
     }
 }

-(void)_tryPlayingNextSongInQueue
{
    // See if there is a next track to get
    DSYTrack *nextTrack = [[DSYRTMPPlayerQueue sharedQueue] nextTrack];
    
    // If there is then play it and push the queue forward
    if( nextTrack )
    {
        // Play the track
        [[DSYRTMPPlayer sharedPlayer] playTrack:nextTrack];
        
        // Push the queue
        [[DSYRTMPPlayerQueue sharedQueue] pushFoward];
    }
}

#pragma mark - Play Events
-(void)pause
{
    if( audioQueue )
    {
        // Pause queue
        [self checkResult:AudioQueuePause(audioQueue)
                   operation:"Failed to pause audio queue"];
        
        // Set
        isPaused = YES;
        
        // Notify
        // Notify
        dispatch_async(dispatch_get_main_queue(), ^{
            [[NSNotificationCenter defaultCenter] postNotificationName:kDSYRTMPPlayerNotificationDidStopPlayback
                                                                object:self];
        });
    }
}

-(void)resume
{
    if( audioQueue )
    {
        [self startQueue];
    }
}

// Start the audio queue, if it's not already playing
-(void)startQueue
{
    if( audioQueue )
    {
        // Resume queue
        [self checkResult:AudioQueueStart(audioQueue, NULL)
                   operation:"Failed to resume audio queue playback"];
        
        // Set
        isPaused = NO;
        
        // Notify
        dispatch_async(dispatch_get_main_queue(), ^{
            [[NSNotificationCenter defaultCenter] postNotificationName:kDSYRTMPPlayerNotificationDidStartPlayback
                                                                object:self];
        });
    }
}

-(void)stopQueue
{
    if( audioQueue )
    {
        AudioQueueFlush(  audioQueue       );
        AudioQueueStop(   audioQueue, YES  );
    }
}

#pragma mark - Getters
-(int)duration
{
    if( self.track )
    {
        return self.track.durationValue;
    }
   return 0;
}

-(BOOL)_hasFinished
{
    return [self progress] >= 1.0;
}

-(float)progress
{
    float currentTime = (float)[DSYRTMPPlayer sharedPlayer].timeIntervel;
    float duration    = (float)[DSYRTMPPlayer sharedPlayer].duration;
    if( duration > 0 )
    {
        return currentTime / duration;
    }
    else
    {
        return 0.0f;
    }
}

-(int)timeIntervel
{
    int timeInterval = 0;
    AudioQueueTimelineRef timeLine;
    OSStatus status = AudioQueueCreateTimeline(audioQueue, &timeLine);
    if(status == noErr) {
        AudioTimeStamp timeStamp;
        AudioQueueGetCurrentTime(audioQueue, timeLine, &timeStamp, NULL);
        timeInterval = timeStamp.mSampleTime / audioStreamBasicDescription.mSampleRate; // modified
    }
    return timeInterval;
}

-(BOOL)isPlaying
{
    BOOL isPlaying = NO;
    if( audioQueue )
    {
        isPlaying = !isPaused;
    }
    return isPlaying;
}

-(BOOL)isRunning
{
    UInt32 isRunning = 0;
    if( audioQueue )
    {
        UInt32 propSize = sizeof(UInt32);
        [self checkResult:AudioQueueGetProperty(audioQueue,
                                                   kAudioQueueProperty_IsRunning,
                                                   &isRunning,
                                                   &propSize)
                   operation:"Failed to check if queue was running"];
    }
    return (BOOL)isRunning;
}

#pragma mark - Utility
-(void)checkResult:(OSStatus)result
         operation:(const char *)operation
{
    if (result == noErr) return;
	char errorString[20];
	// see if it appears to be a 4-char-code
	*(UInt32 *)(errorString + 1) = CFSwapInt32HostToBig(result);
	if (isprint(errorString[1]) && isprint(errorString[2]) && isprint(errorString[3]) && isprint(errorString[4])) {
		errorString[0] = errorString[5] = '\'';
		errorString[6] = '\0';
	} else
		// no, format it as an integer
		sprintf(errorString, "%d", (int)result);
	fprintf(stderr, "Error: %s (%s)\n", operation, errorString);
	exit(1);
}

-(void)printASBD:(AudioStreamBasicDescription)asbd
{
    char formatIDString[5];
    UInt32 formatID = CFSwapInt32HostToBig(asbd.mFormatID);
    bcopy (&formatID, formatIDString, 4);
    formatIDString[4] = '\0';
    NSLog (@"  Sample Rate:         %10.0f",  asbd.mSampleRate);
    NSLog (@"  Format ID:           %10s",    formatIDString);
    NSLog (@"  Format Flags:        %10X",    (unsigned int)asbd.mFormatFlags);
    NSLog (@"  Bytes per Packet:    %10d",    (unsigned int)asbd.mBytesPerPacket);
    NSLog (@"  Frames per Packet:   %10d",    (unsigned int)asbd.mFramesPerPacket);
    NSLog (@"  Bytes per Frame:     %10d",    (unsigned int)asbd.mBytesPerFrame);
    NSLog (@"  Channels per Frame:  %10d",    (unsigned int)asbd.mChannelsPerFrame);
    NSLog (@"  Bits per Channel:    %10d",    (unsigned int)asbd.mBitsPerChannel);
}

#pragma mark - Cleanup
-(void)dealloc
{
    if( audioQueue )
    {
        AudioQueueFlush(    audioQueue       );
        AudioQueueStop(     audioQueue, YES  );
        AudioQueueDispose(  audioQueue, YES  );
    }
}

@end
