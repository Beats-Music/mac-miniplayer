//
//  DSYRTMPPlayer.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/3/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>
@class DSYTrack;

#import "DSYRTMPPlayerQueue.h"
#import "DSYRTMPPlayerNotifications.h"

/**
 The DSYRTMPPlayer, a subclass of NSObject, provides an audio player implementation that can be extended to actually support RTMP playback. Due to current legal restrictions we cannot provide a native RTMP streamer implementation, but encourage developers to offer open source RTMP solutions to provide playback given the resource and location of an RTMP server's stream. Playback in this example would be performed using the Audio Queue Services to progressively load in the streamed data in a circular buffer type of fashion.
 */
@interface DSYRTMPPlayer : NSObject

#pragma mark - Shared Instance
///-----------------------------------------------------------
/// @name Shared Instance
///-----------------------------------------------------------

/**
 Provides a shared instance (singleton) of the DSYRTMPPlayer.
 @return A singleton DSYRTMPPlayer instance to use throughout the application.
 */
+(instancetype)sharedPlayer;

#pragma mark - Properties
///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------

/**
 The DSYTrack representing the song that is currently being played.
 */
@property (nonatomic,strong,readonly) DSYTrack *track;

#pragma mark - Controlling The Audio Player
///-----------------------------------------------------------
/// @name Controlling The Audio Player
///-----------------------------------------------------------

/**
 Loads a DSYTrack into the audio player, pulls the RTMP information, and initializes the audio queue for playback.
 @param track A DSYTrack that should be used for playback.
 */
-(void)playTrack:(DSYTrack *)track;

/**
 Pauses playback.
 */
-(void)pause;

/**
 Resumes playback.
 */
-(void)resume;

/**
 Starts the audio queue if it is not currently running.
 */
-(void)startQueue;

/**
 Stops the audio queue if it is currently running.
 */
-(void)stopQueue;

#pragma mark - Getting The Audio Player's Properties
///-----------------------------------------------------------
/// @name Getting The Audio Player's Properties
///-----------------------------------------------------------

/**
 Provides the duration for the track currently loaded for playback.
 @return An int representing the duration for the now playing track.
 */
-(int)duration;

/**
 Provides a float representing the percentage of the total track that has been played. Will be between 0.0 - 1.0
 @return A float representing the percentage of the total track that has been played. Between 0.0 - 1.0
 */
-(float)progress;

/**
 Provides the current time in seconds.
 @return An int representing the current time in seconds.
 */
-(int)timeIntervel;

/**
 Provides a BOOL indicating whether or not the audio is currently playing.
 @return A BOOL indicating whether or not the audio is currently playing.
 */
-(BOOL)isPlaying;

/**
 Provides a BOOL indicating whether the audio queue is currently running. An audio queue can be running, but not playing if there are no audio samples to play.
 @return A BOOL indicating whether the audio queue is currently running.
 */
-(BOOL)isRunning;

#pragma mark - Utilties
///-----------------------------------------------------------
/// @name Utilities
///-----------------------------------------------------------

/**
 Provides a utility to check OSStatus results during the audio initialization and playback process.
 @param result    An OSStatus representing a result to check.
 @param operation A const char string representing a failed message for the operation that is being checked. Ex. "Failed to start audio queue."
 */
-(void)checkResult:(OSStatus)result
         operation:(const char *)operation;

/**
 Provides a utility to print out the contents of an AudioStreamBasicDescription structure.
 @param asbd An AudioStreamBasicDescription structure.
 */
-(void)printASBD:(AudioStreamBasicDescription)asbd;

@end
