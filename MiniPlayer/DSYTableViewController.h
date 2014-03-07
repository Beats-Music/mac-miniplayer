//
//  DSYTableViewController.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYViewController.h"
#import "DSYImageView.h"
#import "DSYTableRowView.h"
#import "DSYAlbumTableCellView.h"
#import "DSYGroupCellView.h"
#import "DSYPlaylistCellView.h"
#import "DSYTrackTableCellView.h"

@class DSYImageView;

@interface DSYTableViewController : DSYViewController <NSTableViewDataSource,NSTableViewDelegate>

///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------
/**
 An NSImage to use to display the artist's image.
 */
@property (nonatomic,strong) NSImage *mainImage;

/**
 The DSYImageView that is showing the main image at the top of the view.
 */
@property (nonatomic,weak) IBOutlet DSYImageView *mainImageView;

/**
 The DSYImageView that is showing the secondary image.
 */
@property (nonatomic,weak) IBOutlet DSYImageView *secondaryImageView;

/**
 The DSYTextField representing the secondary context describing the secondary image.
 */
@property (nonatomic,weak) IBOutlet DSYTextField *secondaryLabel;

/**
 The DSYTextField representing the subtitle label.
 */
@property (nonatomic,weak) IBOutlet DSYTextField *subtitleLabel;

/**
 The DSYTextField representing the main title label.
 */
@property (nonatomic,weak) IBOutlet DSYTextField *titleLabel;

/**
 The NSTableView used for displaying an array of data.
 */
@property (nonatomic,weak) IBOutlet NSTableView *tableView;

@end
