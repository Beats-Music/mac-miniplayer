//
//  DSYSearchButton.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYSearchButton.h"

@implementation DSYSearchButton

#pragma mark - Custom Drawing
-(void)drawCustomIcon
{
    //// Frames
    NSRect bounds = self.bounds;
    
    //// searchIcon Drawing
    NSBezierPath* searchIconPath = [NSBezierPath bezierPath];
    [searchIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.65079 * NSWidth(bounds), NSMinY(bounds) + 0.61024 * NSHeight(bounds))];
    [searchIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.60834 * NSWidth(bounds), NSMinY(bounds) + 0.56769 * NSHeight(bounds))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.59183 * NSWidth(bounds), NSMinY(bounds) + 0.38397 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.64723 * NSWidth(bounds), NSMinY(bounds) + 0.51157 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.64180 * NSWidth(bounds), NSMinY(bounds) + 0.43397 * NSHeight(bounds))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.38823 * NSWidth(bounds), NSMinY(bounds) + 0.38397 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.53558 * NSWidth(bounds), NSMinY(bounds) + 0.32770 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.44445 * NSWidth(bounds), NSMinY(bounds) + 0.32770 * NSHeight(bounds))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.38823 * NSWidth(bounds), NSMinY(bounds) + 0.58766 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.33200 * NSWidth(bounds), NSMinY(bounds) + 0.44021 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.33200 * NSWidth(bounds), NSMinY(bounds) + 0.53143 * NSHeight(bounds))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.57232 * NSWidth(bounds), NSMinY(bounds) + 0.60385 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.43835 * NSWidth(bounds), NSMinY(bounds) + 0.63780 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.51616 * NSWidth(bounds), NSMinY(bounds) + 0.64311 * NSHeight(bounds))];
    [searchIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.61474 * NSWidth(bounds), NSMinY(bounds) + 0.64637 * NSHeight(bounds))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.65128 * NSWidth(bounds), NSMinY(bounds) + 0.64687 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.62497 * NSWidth(bounds), NSMinY(bounds) + 0.65661 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.64131 * NSWidth(bounds), NSMinY(bounds) + 0.65683 * NSHeight(bounds))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.65079 * NSWidth(bounds), NSMinY(bounds) + 0.61024 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.66123 * NSWidth(bounds), NSMinY(bounds) + 0.63689 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.66101 * NSWidth(bounds), NSMinY(bounds) + 0.62046 * NSHeight(bounds))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.65079 * NSWidth(bounds), NSMinY(bounds) + 0.61024 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.65079 * NSWidth(bounds), NSMinY(bounds) + 0.61024 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.66101 * NSWidth(bounds), NSMinY(bounds) + 0.62046 * NSHeight(bounds))];
    [searchIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.65079 * NSWidth(bounds), NSMinY(bounds) + 0.61024 * NSHeight(bounds))];
    [searchIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.65079 * NSWidth(bounds), NSMinY(bounds) + 0.61024 * NSHeight(bounds))];
    [searchIconPath closePath];
    [searchIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.55857 * NSWidth(bounds), NSMinY(bounds) + 0.55393 * NSHeight(bounds))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.42264 * NSWidth(bounds), NSMinY(bounds) + 0.55393 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.52105 * NSWidth(bounds), NSMinY(bounds) + 0.59143 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.46018 * NSWidth(bounds), NSMinY(bounds) + 0.59143 * NSHeight(bounds))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.42264 * NSWidth(bounds), NSMinY(bounds) + 0.41812 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.38511 * NSWidth(bounds), NSMinY(bounds) + 0.51642 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.38511 * NSWidth(bounds), NSMinY(bounds) + 0.45565 * NSHeight(bounds))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.55857 * NSWidth(bounds), NSMinY(bounds) + 0.41812 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.46018 * NSWidth(bounds), NSMinY(bounds) + 0.38063 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.52105 * NSWidth(bounds), NSMinY(bounds) + 0.38063 * NSHeight(bounds))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.55857 * NSWidth(bounds), NSMinY(bounds) + 0.55393 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.59610 * NSWidth(bounds), NSMinY(bounds) + 0.45565 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.59610 * NSWidth(bounds), NSMinY(bounds) + 0.51642 * NSHeight(bounds))];
    [searchIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.55857 * NSWidth(bounds), NSMinY(bounds) + 0.55393 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.55857 * NSWidth(bounds), NSMinY(bounds) + 0.55393 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.59610 * NSWidth(bounds), NSMinY(bounds) + 0.51642 * NSHeight(bounds))];
    [searchIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.55857 * NSWidth(bounds), NSMinY(bounds) + 0.55393 * NSHeight(bounds))];
    [searchIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.55857 * NSWidth(bounds), NSMinY(bounds) + 0.55393 * NSHeight(bounds))];
    [searchIconPath closePath];
    [searchIconPath setMiterLimit: 4];
    [searchIconPath setWindingRule: NSEvenOddWindingRule];
    [self.iconFillColor setFill];
    [searchIconPath fill];
}

@end
