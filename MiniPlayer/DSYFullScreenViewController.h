//
//  DSYFullScreenViewController.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYViewController.h"
@class DSYImageView, DSYLargeImageView;

/**
 The DSYFullScreenViewController, a subclass of the DSYViewController, provides a view controller class for use when displaying the application in full-screen mode. It has a large artist cover photo in the background, the track's album cover, and the track's artist and title as labels. This view controller listens for the DSYRTMPPlayer's kDSYRTMPPlayerNotificationHasNewTrack notification and uses it to update the display with the image and track metadata for the new now playing track.
 */
@interface DSYFullScreenViewController : DSYViewController

#pragma mark - Properties
///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------

/**
 The DSYLargeImageView used to display the now playing track's artist cover image.
 */
@property (nonatomic,weak) IBOutlet DSYLargeImageView *coverImageView;

/**
 The DSYImageView used to display the now playing track's album cover image.
 */
@property (nonatomic,weak) IBOutlet DSYImageView *trackImageView;

/**
 The DSYTextField used to display the now playing track's artist name.
 */
@property (nonatomic,weak) IBOutlet DSYTextField *artistLabel;

/**
 The DSYTextField used to display the now playing track's title.
 */
@property (nonatomic,weak) IBOutlet DSYTextField *titleLabel;

@end
