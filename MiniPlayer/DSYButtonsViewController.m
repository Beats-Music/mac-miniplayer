//
//  DSYButtonsViewController.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYButtonsViewController.h"

#import "DSYButton.h"

@interface DSYButtonsViewController ()

@end

@implementation DSYButtonsViewController

#pragma mark - Initialization
-(void)initializeViewController
{
    // Register notifications
    [self _registerNotifications];
}

#pragma mark - Awake
-(void)awakeFromNib
{
    self.showMoreButton.wantsRightBorder  = NO;
    self.playButton.buttonOnOffState      = ![DSYRTMPPlayer sharedPlayer].isPlaying;
    self.playButton.enabled               = [DSYRTMPPlayer sharedPlayer].isPlaying;
}

#pragma mark - Register Notifications
-(void)_registerNotifications
{
    // Playback did start
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(_playbackDidStart:)
                                                 name:kDSYRTMPPlayerNotificationDidStartPlayback
                                               object:nil];
    
    // Playback did end
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(_playbackDidStop:)
                                                 name:kDSYRTMPPlayerNotificationDidStopPlayback
                                               object:nil];
}

#pragma mark - Handle Notifications
-(void)_playbackDidStart:(NSNotification *)notification
{
    [self.playButton setEnabled:YES];
    self.playButton.buttonOnOffState = DSYButtonOnOffStateOn;
}

-(void)_playbackDidStop:(NSNotification *)notification
{
    self.playButton.buttonOnOffState = DSYButtonOnOffStateOff;
}

#pragma mark - Events
-(void)togglePlay:(id)sender
{    
    if([[DSYRTMPPlayer sharedPlayer] isPlaying])
    {
        NSLog(@"currently playing , should pause");
        [[DSYRTMPPlayer sharedPlayer] pause];
    }
    else
    {
        NSLog(@"not playing , should resume");
        [[DSYRTMPPlayer sharedPlayer] resume];
    }
}

-(void)nextTrack:(id)sender
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

-(void)previousTrack:(id)sender
{
    // See if there is a previous track to get
    DSYTrack *previousTrack = [[DSYRTMPPlayerQueue sharedQueue] previousTrack];
    
    // If there is then play it and push the queue back
    if( previousTrack )
    {
        // Play the track
        [[DSYRTMPPlayer sharedPlayer] playTrack:previousTrack];
        
        // Push the queue back
        [[DSYRTMPPlayerQueue sharedQueue] pushBack];
    }
}

#pragma mark - Cleanup
-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:kDSYRTMPPlayerNotificationDidStartPlayback
                                                  object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:kDSYRTMPPlayerNotificationDidStopPlayback
                                                  object:nil];
}

@end
