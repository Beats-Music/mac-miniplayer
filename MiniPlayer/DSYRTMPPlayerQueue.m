//
//  DSYRTMPPlayerQueue.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYRTMPPlayerQueue.h"

@implementation DSYRTMPPlayerQueue
@synthesize currentIndex = _currentIndex;
@synthesize tracks = _tracks;

#pragma mark - Shared Instance
+(instancetype)sharedQueue
{
    static DSYRTMPPlayerQueue *_sharedQueue = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedQueue = [[DSYRTMPPlayerQueue alloc] init];
    });
    return _sharedQueue;
}

#pragma mark - Adding Tracks To The Queue
-(void)setQueueWithTracks:(NSArray *)sourceTracks
        startingWithTrack:(DSYTrack *)track
{
    // Copy the tracks
    _tracks = sourceTracks.copy;
    
    // Determine the starting location
    NSInteger index = 0;
    for( DSYTrack *sourceTrack in sourceTracks )
    {
        if( [sourceTrack.id isEqualToString:track.id] )
        {
            // found match
            _currentIndex = index;
            break;
        }
        
        // Increment
        index++;
    }
}

#pragma mark - Getting Next/Previous Tracks
-(DSYTrack *)nextTrack
{
    NSInteger nextIndex = _currentIndex + 1;
    if( nextIndex > self.tracks.count - 1 )
    {
        return nil;
    }
    else
    {
        return self.tracks[nextIndex];
    }
}

-(DSYTrack *)previousTrack
{
    NSInteger previousIndex = _currentIndex - 1;
    if( previousIndex < 0 )
    {
        return self.tracks[_currentIndex];
    }
    else
    {
        return self.tracks[previousIndex];
    }
}

#pragma mark - Pushing The Queue Back / Forward
-(BOOL)pushBack
{
    NSInteger previousIndex = _currentIndex - 1;
    if( previousIndex < 0 )
    {
        return NO;
    }
    else
    {
        _currentIndex = previousIndex;
        return YES;
    }
}

-(BOOL)pushFoward
{
    NSInteger nextIndex = _currentIndex + 1;
    if( nextIndex > self.tracks.count - 1 )
    {
        return NO;
    }
    else
    {
        _currentIndex = nextIndex;
        return YES;
    }
}

#pragma mark -
-(NSString *)description
{
    return [NSString stringWithFormat:
            @"index: %li, tracks: %@",
            _currentIndex,
            _tracks];
}

@end
