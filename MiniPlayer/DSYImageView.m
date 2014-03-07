//
//  DSYImageView.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYImageView.h"

@implementation DSYImageView

#pragma mark - Setters
-(void)setImage:(NSImage *)image
{
    // Set
    _image = image;
    
    // Redraw
    [self setNeedsDisplay:YES];
}

- (void)drawRect:(NSRect)dirtyRect
{
    // Draw the image
    if( self.image )
    {
        [self.image drawInRect:self.bounds];
    }
}

@end
