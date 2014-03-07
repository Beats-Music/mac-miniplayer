//
//  DSYAddButton.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYAddButton.h"

@implementation DSYAddButton

#pragma mark - Custom Icon Drawing
-(void)drawCustomIcon
{
    //// Frames
    NSRect bounds = self.bounds;
    
    //// addIcon Drawing
    NSBezierPath* addIconPath = [NSBezierPath bezierPath];
    [addIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.64554 * NSWidth(bounds), NSMinY(bounds) + 0.46297 * NSHeight(bounds))];
    [addIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.53178 * NSWidth(bounds), NSMinY(bounds) + 0.46297 * NSHeight(bounds))];
    [addIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.53178 * NSWidth(bounds), NSMinY(bounds) + 0.34923 * NSHeight(bounds))];
    [addIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.49930 * NSWidth(bounds), NSMinY(bounds) + 0.31671 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.53178 * NSWidth(bounds), NSMinY(bounds) + 0.33126 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.51721 * NSWidth(bounds), NSMinY(bounds) + 0.31671 * NSHeight(bounds))];
    [addIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.46675 * NSWidth(bounds), NSMinY(bounds) + 0.34923 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.48132 * NSWidth(bounds), NSMinY(bounds) + 0.31671 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.46675 * NSWidth(bounds), NSMinY(bounds) + 0.33126 * NSHeight(bounds))];
    [addIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.46675 * NSWidth(bounds), NSMinY(bounds) + 0.46297 * NSHeight(bounds))];
    [addIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.35302 * NSWidth(bounds), NSMinY(bounds) + 0.46297 * NSHeight(bounds))];
    [addIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.32051 * NSWidth(bounds), NSMinY(bounds) + 0.49548 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.33504 * NSWidth(bounds), NSMinY(bounds) + 0.46297 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.32051 * NSWidth(bounds), NSMinY(bounds) + 0.47752 * NSHeight(bounds))];
    [addIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.35302 * NSWidth(bounds), NSMinY(bounds) + 0.52800 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.32051 * NSWidth(bounds), NSMinY(bounds) + 0.51345 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.33504 * NSWidth(bounds), NSMinY(bounds) + 0.52800 * NSHeight(bounds))];
    [addIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.46675 * NSWidth(bounds), NSMinY(bounds) + 0.52800 * NSHeight(bounds))];
    [addIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.46675 * NSWidth(bounds), NSMinY(bounds) + 0.64176 * NSHeight(bounds))];
    [addIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.49930 * NSWidth(bounds), NSMinY(bounds) + 0.67426 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.46675 * NSWidth(bounds), NSMinY(bounds) + 0.65971 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.48132 * NSWidth(bounds), NSMinY(bounds) + 0.67426 * NSHeight(bounds))];
    [addIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.53178 * NSWidth(bounds), NSMinY(bounds) + 0.64176 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.51721 * NSWidth(bounds), NSMinY(bounds) + 0.67426 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.53178 * NSWidth(bounds), NSMinY(bounds) + 0.65971 * NSHeight(bounds))];
    [addIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.53178 * NSWidth(bounds), NSMinY(bounds) + 0.52800 * NSHeight(bounds))];
    [addIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.64554 * NSWidth(bounds), NSMinY(bounds) + 0.52800 * NSHeight(bounds))];
    [addIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.67805 * NSWidth(bounds), NSMinY(bounds) + 0.49548 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.66352 * NSWidth(bounds), NSMinY(bounds) + 0.52800 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.67805 * NSWidth(bounds), NSMinY(bounds) + 0.51345 * NSHeight(bounds))];
    [addIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.64554 * NSWidth(bounds), NSMinY(bounds) + 0.46297 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.67805 * NSWidth(bounds), NSMinY(bounds) + 0.47752 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.66352 * NSWidth(bounds), NSMinY(bounds) + 0.46297 * NSHeight(bounds))];
    [addIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.64554 * NSWidth(bounds), NSMinY(bounds) + 0.46297 * NSHeight(bounds))];
    [addIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.64554 * NSWidth(bounds), NSMinY(bounds) + 0.46297 * NSHeight(bounds))];
    [addIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.64554 * NSWidth(bounds), NSMinY(bounds) + 0.46297 * NSHeight(bounds))];
    [addIconPath closePath];
    [addIconPath setMiterLimit: 4];
    [addIconPath setWindingRule: NSEvenOddWindingRule];
    [self.iconFillColor setFill];
    [addIconPath fill];
}

@end
