//
//  DSYShowMoreButton.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYShowMoreButton.h"

@implementation DSYShowMoreButton

#pragma mark - Custom Icon Drawing
-(void)drawCustomIcon
{    
    //// Frames
    NSRect bounds = self.bounds;
    
    //// showMoreIcon Drawing
    NSBezierPath* showMoreIconPath = [NSBezierPath bezierPath];
    [showMoreIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.31201 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds))];
    [showMoreIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.24980 * NSWidth(bounds), NSMinY(bounds) + 0.49886 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.27765 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.24980 * NSWidth(bounds), NSMinY(bounds) + 0.53357 * NSHeight(bounds))];
    [showMoreIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.31201 * NSWidth(bounds), NSMinY(bounds) + 0.43605 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.24980 * NSWidth(bounds), NSMinY(bounds) + 0.46415 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.27765 * NSWidth(bounds), NSMinY(bounds) + 0.43605 * NSHeight(bounds))];
    [showMoreIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.37419 * NSWidth(bounds), NSMinY(bounds) + 0.49886 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.34637 * NSWidth(bounds), NSMinY(bounds) + 0.43605 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.37419 * NSWidth(bounds), NSMinY(bounds) + 0.46415 * NSHeight(bounds))];
    [showMoreIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.31201 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.37419 * NSWidth(bounds), NSMinY(bounds) + 0.53357 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.34637 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds))];
    [showMoreIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.31201 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds))];
    [showMoreIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.31201 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds))];
    [showMoreIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.31201 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds))];
    [showMoreIconPath closePath];
    [showMoreIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.49859 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds))];
    [showMoreIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.43638 * NSWidth(bounds), NSMinY(bounds) + 0.49886 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.46422 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.43638 * NSWidth(bounds), NSMinY(bounds) + 0.53357 * NSHeight(bounds))];
    [showMoreIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.49859 * NSWidth(bounds), NSMinY(bounds) + 0.43605 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.43638 * NSWidth(bounds), NSMinY(bounds) + 0.46415 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.46422 * NSWidth(bounds), NSMinY(bounds) + 0.43605 * NSHeight(bounds))];
    [showMoreIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.56077 * NSWidth(bounds), NSMinY(bounds) + 0.49886 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.53293 * NSWidth(bounds), NSMinY(bounds) + 0.43605 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.56077 * NSWidth(bounds), NSMinY(bounds) + 0.46415 * NSHeight(bounds))];
    [showMoreIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.49859 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.56077 * NSWidth(bounds), NSMinY(bounds) + 0.53357 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.53293 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds))];
    [showMoreIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.49859 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds))];
    [showMoreIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.49859 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds))];
    [showMoreIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.49859 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds))];
    [showMoreIconPath closePath];
    [showMoreIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.68514 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds))];
    [showMoreIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.62293 * NSWidth(bounds), NSMinY(bounds) + 0.49886 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.65080 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.62293 * NSWidth(bounds), NSMinY(bounds) + 0.53357 * NSHeight(bounds))];
    [showMoreIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.68514 * NSWidth(bounds), NSMinY(bounds) + 0.43605 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.62293 * NSWidth(bounds), NSMinY(bounds) + 0.46415 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.65080 * NSWidth(bounds), NSMinY(bounds) + 0.43605 * NSHeight(bounds))];
    [showMoreIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.74735 * NSWidth(bounds), NSMinY(bounds) + 0.49886 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.71950 * NSWidth(bounds), NSMinY(bounds) + 0.43605 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.74735 * NSWidth(bounds), NSMinY(bounds) + 0.46415 * NSHeight(bounds))];
    [showMoreIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.68514 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.74735 * NSWidth(bounds), NSMinY(bounds) + 0.53357 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.71950 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds))];
    [showMoreIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.68514 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds))];
    [showMoreIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.68514 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds))];
    [showMoreIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.68514 * NSWidth(bounds), NSMinY(bounds) + 0.56169 * NSHeight(bounds))];
    [showMoreIconPath closePath];
    [showMoreIconPath setMiterLimit: 4];
    [showMoreIconPath setWindingRule: NSEvenOddWindingRule];
    [self.iconFillColor setFill];
    [showMoreIconPath fill];
}

@end
