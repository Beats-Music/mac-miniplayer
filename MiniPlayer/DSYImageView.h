//
//  DSYImageView.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYView.h"

/**
 The DSYImageView, a subclass of the DSYView, provides a custom view that draws an image provided by its `image` property.
 */
@interface DSYImageView : DSYView

#pragma mark - Properties
///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------

/**
 An NSImage to draw within the bounds of the view.
 */
@property (nonatomic,strong) NSImage *image;

@end
