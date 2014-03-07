//
//  DSYRTMPPlayer.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/3/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>

#import "DSYRTMPPlayerQueue.h"
#import "DSYRTMPPlayerNotifications.h"

@interface DSYRTMPPlayer : NSObject

#pragma mark - Shared Instance
///-----------------------------------------------------------
/// @name Shared Instance
///-----------------------------------------------------------
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

-(void)playTrack:(DSYTrack *)track;
-(void)pause;
-(void)resume;
-(void)startQueue;
-(void)stopQueue;

#pragma mark - Getters
-(int)duration;
-(float)progress;
-(int)timeIntervel;
-(BOOL)isPlaying;
-(BOOL)isRunning;

#pragma mark - Setters

#pragma mark - Utilties
-(void)checkResult:(OSStatus)result
         operation:(const char *)operation;
-(void)printASBD:(AudioStreamBasicDescription)asbd;

@end
