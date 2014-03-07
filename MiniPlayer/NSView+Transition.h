//
//  NSView+Transition.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class DSYViewController;

@interface NSView (Transition)

-(void)addSubviewFromViewController:(DSYViewController *)viewController;

@end
