//
//  DSYNowPlayingViewController.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYViewController.h"

@interface DSYNowPlayingViewController : DSYViewController

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
