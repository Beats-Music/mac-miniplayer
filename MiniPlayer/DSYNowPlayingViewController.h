//
//  DSYNowPlayingViewController.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYViewController.h"

/**
 The DSYNowPlayingViewController, a subclass of the DSYViewController, provides a view controller to display the metadata for the now playing track on the bottom of the application. The view controller listens for the kDSYRTMPPlayerNotificationHasNewTrack and will use the new track from the DSYRTMPPlayer to update the titleLabel and subtitleLabel with the track's title and artist name, respectively.
 */
@interface DSYNowPlayingViewController : DSYViewController

#pragma mark - Properties
///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------

/**
 The DSYTextField representing the main title label.
 */
@property (nonatomic,weak) IBOutlet DSYTextField *titleLabel;

/**
 The DSYTextField representing the subtitle label.
 */
@property (nonatomic,weak) IBOutlet DSYTextField *subtitleLabel;

/**
 The DSYTrack instance to use for populating the now playing section.
 */
@property (nonatomic,strong) DSYTrack *track;

@end
