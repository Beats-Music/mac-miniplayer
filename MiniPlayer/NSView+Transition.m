//
//  NSView+Transition.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "NSView+Transition.h"
#import "DSYViewController.h"

@implementation NSView (Transition)

-(void)addSubviewFromViewController:(DSYViewController *)viewController
{
    // Resize view controller to content view's current size
    viewController.view.frame = [self bounds];
    // Add resizing flags to make the view controller resize with the window
    viewController.view.autoresizingMask = (NSViewWidthSizable|NSViewHeightSizable);
    // Add in the core graphics view controller as subview
    [self addSubview:viewController.view];
}

@end
