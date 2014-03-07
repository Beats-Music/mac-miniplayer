//
//  DSYTrackTableCellView.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/3/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYTrackTableCellView.h"

@interface DSYTrackTableCellView ()
{
}
@end

@implementation DSYTrackTableCellView

-(void)awakeFromNib
{
    self.titleLabel.textColor = [NSColor blackColor];
    self.subtitleLabel.textColor = [NSColor darkGrayColor];
    self.trackNumberBox.fillColor = [NSColor colorWithCalibratedRed: 0.854 green: 0.859 blue: 0.869 alpha: 1];
    self.backgroundColor = [NSColor colorWithCalibratedRed: 0.892 green: 0.897 blue: 0.907 alpha: 1];
    
    // Add bottom border
    self.wantsLayer = YES;
    self.layer = [CALayer layer];
    self.layer.frame = self.frame;
    CALayer *bottomBorder = [CALayer layer];
    bottomBorder.backgroundColor = [NSColor colorWithCalibratedRed: 0.76 green: 0.764 blue: 0.774 alpha: 1].CGColor;
    CGRect frame = self.layer.bounds;
    frame.size.height = 1.0;
    bottomBorder.frame = frame;
    [bottomBorder setAutoresizingMask:(NSViewWidthSizable)];
    [self.layer addSublayer:bottomBorder];
}

-(void)drawRect:(NSRect)dirtyRect
{
    // Background
    [self.backgroundColor set];
    NSRectFill(self.bounds);
}

@end
