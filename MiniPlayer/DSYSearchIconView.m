//
//  DSYSearchIconView.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYSearchIconView.h"

@implementation DSYSearchIconView

-(void)drawRect:(NSRect)dirtyRect
{
    //// Color Declarations
    NSColor* foregroundColor = [NSColor colorWithCalibratedRed: 0.667 green: 0.667 blue: 0.667 alpha: 1];
    
    //// Frames
    NSRect frame = self.bounds;
    
    //// searchIcon Drawing
    NSBezierPath* searchIconPath = [NSBezierPath bezierPath];
    [searchIconPath moveToPoint: NSMakePoint(NSMinX(frame) + 0.65079 * NSWidth(frame), NSMinY(frame) + 0.38976 * NSHeight(frame))];
    [searchIconPath lineToPoint: NSMakePoint(NSMinX(frame) + 0.60834 * NSWidth(frame), NSMinY(frame) + 0.43231 * NSHeight(frame))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(frame) + 0.59183 * NSWidth(frame), NSMinY(frame) + 0.61603 * NSHeight(frame)) controlPoint1: NSMakePoint(NSMinX(frame) + 0.64723 * NSWidth(frame), NSMinY(frame) + 0.48843 * NSHeight(frame)) controlPoint2: NSMakePoint(NSMinX(frame) + 0.64180 * NSWidth(frame), NSMinY(frame) + 0.56603 * NSHeight(frame))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(frame) + 0.38823 * NSWidth(frame), NSMinY(frame) + 0.61603 * NSHeight(frame)) controlPoint1: NSMakePoint(NSMinX(frame) + 0.53558 * NSWidth(frame), NSMinY(frame) + 0.67230 * NSHeight(frame)) controlPoint2: NSMakePoint(NSMinX(frame) + 0.44445 * NSWidth(frame), NSMinY(frame) + 0.67230 * NSHeight(frame))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(frame) + 0.38823 * NSWidth(frame), NSMinY(frame) + 0.41234 * NSHeight(frame)) controlPoint1: NSMakePoint(NSMinX(frame) + 0.33200 * NSWidth(frame), NSMinY(frame) + 0.55979 * NSHeight(frame)) controlPoint2: NSMakePoint(NSMinX(frame) + 0.33200 * NSWidth(frame), NSMinY(frame) + 0.46857 * NSHeight(frame))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(frame) + 0.57232 * NSWidth(frame), NSMinY(frame) + 0.39615 * NSHeight(frame)) controlPoint1: NSMakePoint(NSMinX(frame) + 0.43835 * NSWidth(frame), NSMinY(frame) + 0.36220 * NSHeight(frame)) controlPoint2: NSMakePoint(NSMinX(frame) + 0.51616 * NSWidth(frame), NSMinY(frame) + 0.35689 * NSHeight(frame))];
    [searchIconPath lineToPoint: NSMakePoint(NSMinX(frame) + 0.61474 * NSWidth(frame), NSMinY(frame) + 0.35363 * NSHeight(frame))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(frame) + 0.65128 * NSWidth(frame), NSMinY(frame) + 0.35313 * NSHeight(frame)) controlPoint1: NSMakePoint(NSMinX(frame) + 0.62497 * NSWidth(frame), NSMinY(frame) + 0.34339 * NSHeight(frame)) controlPoint2: NSMakePoint(NSMinX(frame) + 0.64131 * NSWidth(frame), NSMinY(frame) + 0.34317 * NSHeight(frame))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(frame) + 0.65079 * NSWidth(frame), NSMinY(frame) + 0.38976 * NSHeight(frame)) controlPoint1: NSMakePoint(NSMinX(frame) + 0.66123 * NSWidth(frame), NSMinY(frame) + 0.36312 * NSHeight(frame)) controlPoint2: NSMakePoint(NSMinX(frame) + 0.66101 * NSWidth(frame), NSMinY(frame) + 0.37954 * NSHeight(frame))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(frame) + 0.65079 * NSWidth(frame), NSMinY(frame) + 0.38976 * NSHeight(frame)) controlPoint1: NSMakePoint(NSMinX(frame) + 0.65079 * NSWidth(frame), NSMinY(frame) + 0.38976 * NSHeight(frame)) controlPoint2: NSMakePoint(NSMinX(frame) + 0.66101 * NSWidth(frame), NSMinY(frame) + 0.37954 * NSHeight(frame))];
    [searchIconPath lineToPoint: NSMakePoint(NSMinX(frame) + 0.65079 * NSWidth(frame), NSMinY(frame) + 0.38976 * NSHeight(frame))];
    [searchIconPath lineToPoint: NSMakePoint(NSMinX(frame) + 0.65079 * NSWidth(frame), NSMinY(frame) + 0.38976 * NSHeight(frame))];
    [searchIconPath closePath];
    [searchIconPath moveToPoint: NSMakePoint(NSMinX(frame) + 0.55857 * NSWidth(frame), NSMinY(frame) + 0.44607 * NSHeight(frame))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(frame) + 0.42264 * NSWidth(frame), NSMinY(frame) + 0.44607 * NSHeight(frame)) controlPoint1: NSMakePoint(NSMinX(frame) + 0.52105 * NSWidth(frame), NSMinY(frame) + 0.40857 * NSHeight(frame)) controlPoint2: NSMakePoint(NSMinX(frame) + 0.46018 * NSWidth(frame), NSMinY(frame) + 0.40857 * NSHeight(frame))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(frame) + 0.42264 * NSWidth(frame), NSMinY(frame) + 0.58188 * NSHeight(frame)) controlPoint1: NSMakePoint(NSMinX(frame) + 0.38511 * NSWidth(frame), NSMinY(frame) + 0.48358 * NSHeight(frame)) controlPoint2: NSMakePoint(NSMinX(frame) + 0.38511 * NSWidth(frame), NSMinY(frame) + 0.54435 * NSHeight(frame))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(frame) + 0.55857 * NSWidth(frame), NSMinY(frame) + 0.58188 * NSHeight(frame)) controlPoint1: NSMakePoint(NSMinX(frame) + 0.46018 * NSWidth(frame), NSMinY(frame) + 0.61937 * NSHeight(frame)) controlPoint2: NSMakePoint(NSMinX(frame) + 0.52105 * NSWidth(frame), NSMinY(frame) + 0.61937 * NSHeight(frame))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(frame) + 0.55857 * NSWidth(frame), NSMinY(frame) + 0.44607 * NSHeight(frame)) controlPoint1: NSMakePoint(NSMinX(frame) + 0.59610 * NSWidth(frame), NSMinY(frame) + 0.54435 * NSHeight(frame)) controlPoint2: NSMakePoint(NSMinX(frame) + 0.59610 * NSWidth(frame), NSMinY(frame) + 0.48358 * NSHeight(frame))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(frame) + 0.55857 * NSWidth(frame), NSMinY(frame) + 0.44607 * NSHeight(frame)) controlPoint1: NSMakePoint(NSMinX(frame) + 0.55857 * NSWidth(frame), NSMinY(frame) + 0.44607 * NSHeight(frame)) controlPoint2: NSMakePoint(NSMinX(frame) + 0.59610 * NSWidth(frame), NSMinY(frame) + 0.48358 * NSHeight(frame))];
    [searchIconPath lineToPoint: NSMakePoint(NSMinX(frame) + 0.55857 * NSWidth(frame), NSMinY(frame) + 0.44607 * NSHeight(frame))];
    [searchIconPath lineToPoint: NSMakePoint(NSMinX(frame) + 0.55857 * NSWidth(frame), NSMinY(frame) + 0.44607 * NSHeight(frame))];
    [searchIconPath closePath];
    [searchIconPath setMiterLimit: 4];
    [searchIconPath setWindingRule: NSEvenOddWindingRule];
    [foregroundColor setFill];
    [searchIconPath fill];
}

@end
