//
//  NSView+Transition.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class DSYViewController;

/**
 The NSView+Transition category extension provides a quick way to add a view controller's view (such as the view from a DSYViewController) as a subview of an existing NSView.
 */
@interface NSView (Transition)

#pragma mark - Adding Subviews
///-----------------------------------------------------------
/// @name Adding Subviews
///-----------------------------------------------------------

/**
 Adds a subview using a view controller and adds the proper autoresizing masks
 @param viewController The DSYViewController (or subclass) to be added as a subview
 */
-(void)addSubviewFromViewController:(DSYViewController *)viewController;

@end
