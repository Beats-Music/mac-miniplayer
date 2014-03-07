//
//  DSYAlbumViewController.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYTableViewController.h"
@class DSYImageView;

@interface DSYAlbumViewController : DSYTableViewController

///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------

/**
 The DSYAlbum this view is representing.
 */
@property (nonatomic,strong) DSYAlbum *album;

/**
 An NSImage to use to display the artist's image.
 */
@property (nonatomic,strong) NSImage *artistImage;

/**
 The DSYImageView that is showing the album's image.
 */
@property (nonatomic,weak) IBOutlet DSYImageView *albumImageView;

/**
 The DSYImageView that is showing the `artistImage`.
 */
@property (nonatomic,weak) IBOutlet DSYImageView *artistImageView;

/**
 The DSYTextField representing the artist's label.
 */
@property (nonatomic,weak) IBOutlet DSYTextField *artistLabel;

/**
 The DSYTextField representing the subtitle label.
 */
@property (nonatomic,weak) IBOutlet DSYTextField *subtitleLabel;

/**
 The DSYTextField representing the main title label.
 */
@property (nonatomic,weak) IBOutlet DSYTextField *titleLabel;

/**
 An NSArray of DSYTrack instances representing the tracks belonging to this album.
 */
@property (nonatomic,strong) NSArray *tracks;

///-----------------------------------------------------------
/// @name Class Initializer
///-----------------------------------------------------------
+(instancetype)albumViewControllerWithAlbum:(DSYAlbum *)album;

-(void)redraw;

@end

