//
//  DSYFullScreenViewController.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYFullScreenViewController.h"

#import "DSYImageView.h"
#import "DSYLargeImageView.h"

@implementation DSYFullScreenViewController

#pragma mark - Initialization
-(void)initializeViewController
{
    // Register Notifications
    [self _registerNotifications];
}

#pragma mark - Register Notifications
-(void)_registerNotifications
{
    // New Track
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(_playbackStartedNewTrack:)
                                                 name:kDSYRTMPPlayerNotificationHasNewTrack
                                               object:nil];
}

#pragma mark - Playback Notifications
-(void)_playbackStartedNewTrack:(NSNotification *)notification
{
    // Get new track
    DSYTrack *track = notification.object;
    
    self.trackImageView.image = nil;
    self.coverImageView.image = nil;
    self.artistLabel.stringValue = track.artistDisplayName;
    self.titleLabel.stringValue = track.title;
    
    // Load track art for the new track
    [self _loadTrackArtForTrack:track];
    
    // Load artist cover for the  track
    [self _loadArtistCoverForTrack:track];
    
}

#pragma mark - Private Loading
-(void)_loadTrackArtForTrack:(DSYTrack *)track
{
    // Load album art for new track
    [[DSYAPIClient sharedAPI] getTrackArtWithTrackId:track.id parameters:@{ @"size" : @"large" } finishedLoading:^{
        
    } success:^(id response) {
        
        // Load the response image into the track's image view
        self.trackImageView.image = response;
        
    } failed:^(NSError *error, id response) {
        NSLog(@"failed to load track art: %@",error);
    }];
}

-(void)_loadArtistCoverForTrack:(DSYTrack *)track
{
    // Load artist data, then pull the artist cover image and load in background
    [[DSYAPIClient sharedAPI] getTrackArtistsWithTrackId:track.id parameters:nil finishedLoading:^{
        
    } success:^(id response) {
        
        // Pull the artist id for the top related artist
        NSDictionary    *artistInfo = [response[@"data"] firstObject];
        NSString        *artistId   = artistInfo[@"id"];
        
        // Load in the artist cover with the artist id
        [self _loadArtistCoverWithArtistId:artistId];
        
        
    } failed:^(NSError *error, id response) {
        NSLog(@"failed to load track artists: %@",error);
    }];
}

-(void)_loadArtistCoverWithArtistId:(NSString *)artistId
{
    [[DSYAPIClient sharedAPI] getArtistCoverArtWithArtistId:artistId parameters:@{ @"size" : @"large" } finishedLoading:^{
        
    } success:^(id response) {
        
        self.coverImageView.image = response;
        
    } failed:^(NSError *error, id response) {
        NSLog(@"failed to load artist image: %@",error);
    }];
}

#pragma mark - Cleanup
-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:kDSYRTMPPlayerNotificationHasNewTrack
                                                  object:nil];
}

@end
