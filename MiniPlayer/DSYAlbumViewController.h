//
//  DSYAlbumViewController.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYTableViewController.h"
@class DSYImageView;

/**
 The DSYAlbumViewController, a subclass of the DSYTableViewController, provides a view controller that displays an album, its cover image, its metadata (artist, duration, number of tracks), and its tracks in a tableview.
 */
@interface DSYAlbumViewController : DSYTableViewController

#pragma mark - Properties
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

#pragma mark - Class Initializer
///-----------------------------------------------------------
/// @name Class Initializer
///-----------------------------------------------------------

/**
 Creates a new instance of the DSYAlbumViewController with a DSYAlbum to use to populate the view controller's metadata fields.
 @param album A DSYAlbum to use for populating the metadata labels for the DSYAlbumViewController.
 @return A newly created instance of the DSYAlbumViewController initialized with the input DSYAlbum.
 */
+(instancetype)albumViewControllerWithAlbum:(DSYAlbum *)album;

#pragma mark - Events
///-----------------------------------------------------------
/// @name Events
///-----------------------------------------------------------

/**
 Tells the view controller to trigger a `setNeedsDisplay:` on its view.
 */
-(void)redraw;

@end

