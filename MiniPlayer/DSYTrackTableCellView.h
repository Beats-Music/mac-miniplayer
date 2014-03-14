//
//  DSYTrackTableCellView.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/3/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DSYImageView.h"

/**
 The DSYTrackTableCellView, a subclass of the NSTableCellView, provides a custom tableview cell with a background color, an image, a title label, a subtitle label, a track number box (colored gray), and a track number label.
 */
@interface DSYTrackTableCellView : NSTableCellView

#pragma mark - Properties
///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------

/**
 An NSColor representing the background color for the view.
 */
@property (nonatomic,strong) NSColor *backgroundColor;

/**
 The DSYImageView used to display an image.
 */
@property (nonatomic,weak) IBOutlet DSYImageView *mainImageView;

/**
 The DSYTextField representing the main title label.
 */
@property (nonatomic,weak) IBOutlet DSYTextField *titleLabel;

/**
 The DSYTextField representing the subtitle label.
 */
@property (nonatomic,weak) IBOutlet DSYTextField *subtitleLabel;

/**
 The DSYTextField representing the track number label.
 */
@property (nonatomic,weak) IBOutlet DSYTextField *trackNumberLabel;

/**
 The box that is displayed at the left of the cell with the track number inside.
 */
@property (nonatomic,weak) IBOutlet NSBox *trackNumberBox;

@end
