//
//  DSYTableRowView.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/3/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYTableRowView.h"

@implementation DSYTableRowView

- (void)drawSelectionInRect:(NSRect)dirtyRect {
    [[[NSColor colorWithCalibratedRed: 0.892 green: 0.897 blue: 0.907 alpha: 1] shadowWithLevel: 0.1] set];
    NSRectFill(self.bounds);
}

@end
