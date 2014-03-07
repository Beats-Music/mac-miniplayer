//
//  DSYBackButton.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYBackButton.h"

@implementation DSYBackButton

#pragma mark - Custom Icon Drawing
-(void)drawCustomIcon
{
    //// Frames
    NSRect bounds = self.bounds;
    
    //// backIcon Drawing
    NSBezierPath* backIconPath = [NSBezierPath bezierPath];
    [backIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.59564 * NSWidth(bounds), NSMinY(bounds) + 0.64632 * NSHeight(bounds))];
    [backIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.61102 * NSWidth(bounds), NSMinY(bounds) + 0.65261 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.59976 * NSWidth(bounds), NSMinY(bounds) + 0.65041 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.60538 * NSWidth(bounds), NSMinY(bounds) + 0.65261 * NSHeight(bounds))];
    [backIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.61930 * NSWidth(bounds), NSMinY(bounds) + 0.65099 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.61376 * NSWidth(bounds), NSMinY(bounds) + 0.65261 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.61659 * NSWidth(bounds), NSMinY(bounds) + 0.65210 * NSHeight(bounds))];
    [backIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.63269 * NSWidth(bounds), NSMinY(bounds) + 0.63112 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.62740 * NSWidth(bounds), NSMinY(bounds) + 0.64767 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.63269 * NSWidth(bounds), NSMinY(bounds) + 0.63980 * NSHeight(bounds))];
    [backIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.63269 * NSWidth(bounds), NSMinY(bounds) + 0.37158 * NSHeight(bounds))];
    [backIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.61932 * NSWidth(bounds), NSMinY(bounds) + 0.35172 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.63269 * NSWidth(bounds), NSMinY(bounds) + 0.36287 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.62740 * NSWidth(bounds), NSMinY(bounds) + 0.35504 * NSHeight(bounds))];
    [backIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.59564 * NSWidth(bounds), NSMinY(bounds) + 0.35639 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.61123 * NSWidth(bounds), NSMinY(bounds) + 0.34837 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.60186 * NSWidth(bounds), NSMinY(bounds) + 0.35022 * NSHeight(bounds))];
    [backIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.46467 * NSWidth(bounds), NSMinY(bounds) + 0.48610 * NSHeight(bounds))];
    [backIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.46467 * NSWidth(bounds), NSMinY(bounds) + 0.51653 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.45624 * NSWidth(bounds), NSMinY(bounds) + 0.49455 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.45624 * NSWidth(bounds), NSMinY(bounds) + 0.50816 * NSHeight(bounds))];
    [backIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.59564 * NSWidth(bounds), NSMinY(bounds) + 0.64632 * NSHeight(bounds))];
    [backIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.59564 * NSWidth(bounds), NSMinY(bounds) + 0.64632 * NSHeight(bounds))];
    [backIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.59564 * NSWidth(bounds), NSMinY(bounds) + 0.64632 * NSHeight(bounds))];
    [backIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.59564 * NSWidth(bounds), NSMinY(bounds) + 0.64632 * NSHeight(bounds))];
    [backIconPath closePath];
    [backIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.39886 * NSWidth(bounds), NSMinY(bounds) + 0.65191 * NSHeight(bounds))];
    [backIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.42937 * NSWidth(bounds), NSMinY(bounds) + 0.62163 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.41573 * NSWidth(bounds), NSMinY(bounds) + 0.65191 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.42937 * NSWidth(bounds), NSMinY(bounds) + 0.63837 * NSHeight(bounds))];
    [backIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.42941 * NSWidth(bounds), NSMinY(bounds) + 0.38030 * NSHeight(bounds))];
    [backIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.39890 * NSWidth(bounds), NSMinY(bounds) + 0.35006 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.42941 * NSWidth(bounds), NSMinY(bounds) + 0.36360 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.41573 * NSWidth(bounds), NSMinY(bounds) + 0.35006 * NSHeight(bounds))];
    [backIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.36842 * NSWidth(bounds), NSMinY(bounds) + 0.38030 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.38206 * NSWidth(bounds), NSMinY(bounds) + 0.35006 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.36842 * NSWidth(bounds), NSMinY(bounds) + 0.36360 * NSHeight(bounds))];
    [backIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.36838 * NSWidth(bounds), NSMinY(bounds) + 0.62163 * NSHeight(bounds))];
    [backIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.39886 * NSWidth(bounds), NSMinY(bounds) + 0.65191 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.36838 * NSWidth(bounds), NSMinY(bounds) + 0.63837 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.38202 * NSWidth(bounds), NSMinY(bounds) + 0.65191 * NSHeight(bounds))];
    [backIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.39886 * NSWidth(bounds), NSMinY(bounds) + 0.65191 * NSHeight(bounds))];
    [backIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.39886 * NSWidth(bounds), NSMinY(bounds) + 0.65191 * NSHeight(bounds))];
    [backIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.39886 * NSWidth(bounds), NSMinY(bounds) + 0.65191 * NSHeight(bounds))];
    [backIconPath closePath];
    [backIconPath setMiterLimit: 4];
    [backIconPath setWindingRule: NSEvenOddWindingRule];
    [self.iconFillColor setFill];
    [backIconPath fill];
}

@end
