//
//  DSYRTMPPlayerQueue.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DSYRTMPPlayerQueue : NSObject

#pragma mark - Properties
///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------
/**
 An NSInteger representing the current index within the tracks source array used for the queue.
 */
@property (nonatomic,readonly) NSInteger currentIndex;

/**
 An NSArray containing the source tracks as DSYTrack instances to use for playback.
 */
@property (nonatomic,strong,readonly) NSMutableArray *tracks;

#pragma mark - Shared Instance
///-----------------------------------------------------------
/// @name Shared Instance
///-----------------------------------------------------------
/**
 Provides a shared instance of the DSYRTMPPlayerQueue class.
 @return A singleton instance of the DSYRTMPPlayerQueue class.
 */
+(instancetype)sharedQueue;

#pragma mark - Adding Tracks To The Queue
///-----------------------------------------------------------
/// @name Adding Tracks To The Queue
///-----------------------------------------------------------
/**
 Sets the queue using an array of source tracks and the track that is currently queued up.
 @param sourceTracks An NSArray containing the DSYTrack instances to use for queueing.
 @param track        The DSYTrack object to use to determine the current index of the queue.
 */
-(void)setQueueWithTracks:(NSArray *)sourceTracks
        startingWithTrack:(DSYTrack *)track;

#pragma mark - Getting Next/Previous Tracks
///-----------------------------------------------------------
/// @name Getting Next/Previous Tracks
///-----------------------------------------------------------
/**
 Provides the next track in the queue after the current starting index.
 @return A DSYTrack representing the next track in the queue. Returns nil if the queue is at the end of the list and has no next song.
 */
-(DSYTrack *)nextTrack;

/**
 Provides the previous track in the queue before the current starting index.
 @return A DSYTrack representing the previous track in the queue. Returns the current playing track if the queue is at the beginning and has no previous track to play.
 */
-(DSYTrack *)previousTrack;

#pragma mark - Pushing The Queue Back / Forward
///-----------------------------------------------------------
/// @name Pushing The Queue Back / Forward
///-----------------------------------------------------------

/**
 Increments the current index of the queue to the next track's index. Will not allow current index to exceed the total tracks count - 1.
 @return A BOOL indicating whether the push operation was successful. Will be NO if the queue was pushed forward at the last index.
 */
-(BOOL)pushFoward;

/**
 Decrements the current index of the queue to the previous track's index. Will not allow current index to fall under 0.
 @return A BOOL indicating whether the push operation was successful. Will be NO if the queue was pushed back at the 0 index.
 */
-(BOOL)pushBack;

@end
