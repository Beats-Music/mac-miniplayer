//
//  DSYNowPlayingViewController.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYNowPlayingViewController.h"

@interface DSYNowPlayingViewController ()

@end

@implementation DSYNowPlayingViewController

#pragma mark - Initialization
-(void)initializeViewController
{
    [self _registerNotifications];
}

#pragma mark - Awake
-(void)awakeFromNib
{
    self.titleLabel.stringValue     = @"";
    self.subtitleLabel.stringValue  = @"";
    self.titleLabel.textColor       = [NSColor whiteColor];
    self.subtitleLabel.textColor    = [NSColor darkGrayColor];
}

#pragma mark - Register Notifications
-(void)_registerNotifications
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(trackChanged:)
                                                 name:kDSYRTMPPlayerNotificationHasNewTrack
                                               object:nil];
}

#pragma mark - Handle Notifications
-(void)trackChanged:(NSNotification *)notification
{
    DSYTrack *track = (DSYTrack *)notification.object;
    self.titleLabel.stringValue = track.title;
    self.subtitleLabel.stringValue = track.artistDisplayName;
}

#pragma mark - Setters
-(void)setTrack:(DSYTrack *)track
{
    // Set
    _track = track;
    
    // Update info
    self.titleLabel.stringValue     = track.title;
    self.subtitleLabel.stringValue  = track.artistDisplayName;
}

#pragma mark - Cleanup
-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:kDSYRTMPPlayerNotificationHasNewTrack
                                                  object:nil];
}

@end
