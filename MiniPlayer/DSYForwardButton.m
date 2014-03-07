//
//  DSYForwardButton.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYForwardButton.h"

@implementation DSYForwardButton

#pragma mark - Custom Icon Drawing
-(void)drawCustomIcon
{
    //// Frames
    NSRect bounds = self.bounds;
    
    //// forwardIcon Drawing
    NSBezierPath* forwardIconPath = [NSBezierPath bezierPath];
    [forwardIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.40543 * NSWidth(bounds), NSMinY(bounds) + 0.64632 * NSHeight(bounds))];
    [forwardIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.39005 * NSWidth(bounds), NSMinY(bounds) + 0.65261 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.40131 * NSWidth(bounds), NSMinY(bounds) + 0.65041 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.39569 * NSWidth(bounds), NSMinY(bounds) + 0.65261 * NSHeight(bounds))];
    [forwardIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.38177 * NSWidth(bounds), NSMinY(bounds) + 0.65099 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.38731 * NSWidth(bounds), NSMinY(bounds) + 0.65261 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.38447 * NSWidth(bounds), NSMinY(bounds) + 0.65210 * NSHeight(bounds))];
    [forwardIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.36838 * NSWidth(bounds), NSMinY(bounds) + 0.63112 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.37367 * NSWidth(bounds), NSMinY(bounds) + 0.64767 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.36838 * NSWidth(bounds), NSMinY(bounds) + 0.63980 * NSHeight(bounds))];
    [forwardIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.36838 * NSWidth(bounds), NSMinY(bounds) + 0.37158 * NSHeight(bounds))];
    [forwardIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.38175 * NSWidth(bounds), NSMinY(bounds) + 0.35172 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.36838 * NSWidth(bounds), NSMinY(bounds) + 0.36287 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.37367 * NSWidth(bounds), NSMinY(bounds) + 0.35504 * NSHeight(bounds))];
    [forwardIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.40543 * NSWidth(bounds), NSMinY(bounds) + 0.35639 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.38984 * NSWidth(bounds), NSMinY(bounds) + 0.34837 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.39921 * NSWidth(bounds), NSMinY(bounds) + 0.35022 * NSHeight(bounds))];
    [forwardIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.53639 * NSWidth(bounds), NSMinY(bounds) + 0.48610 * NSHeight(bounds))];
    [forwardIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.53639 * NSWidth(bounds), NSMinY(bounds) + 0.51653 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.54483 * NSWidth(bounds), NSMinY(bounds) + 0.49455 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.54483 * NSWidth(bounds), NSMinY(bounds) + 0.50816 * NSHeight(bounds))];
    [forwardIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.40543 * NSWidth(bounds), NSMinY(bounds) + 0.64632 * NSHeight(bounds))];
    [forwardIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.40543 * NSWidth(bounds), NSMinY(bounds) + 0.64632 * NSHeight(bounds))];
    [forwardIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.40543 * NSWidth(bounds), NSMinY(bounds) + 0.64632 * NSHeight(bounds))];
    [forwardIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.40543 * NSWidth(bounds), NSMinY(bounds) + 0.64632 * NSHeight(bounds))];
    [forwardIconPath closePath];
    [forwardIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.60221 * NSWidth(bounds), NSMinY(bounds) + 0.65191 * NSHeight(bounds))];
    [forwardIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.57169 * NSWidth(bounds), NSMinY(bounds) + 0.62163 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.58534 * NSWidth(bounds), NSMinY(bounds) + 0.65191 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.57169 * NSWidth(bounds), NSMinY(bounds) + 0.63837 * NSHeight(bounds))];
    [forwardIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.57165 * NSWidth(bounds), NSMinY(bounds) + 0.38030 * NSHeight(bounds))];
    [forwardIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.60217 * NSWidth(bounds), NSMinY(bounds) + 0.35006 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.57165 * NSWidth(bounds), NSMinY(bounds) + 0.36360 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.58534 * NSWidth(bounds), NSMinY(bounds) + 0.35006 * NSHeight(bounds))];
    [forwardIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.63265 * NSWidth(bounds), NSMinY(bounds) + 0.38030 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.61900 * NSWidth(bounds), NSMinY(bounds) + 0.35006 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.63265 * NSWidth(bounds), NSMinY(bounds) + 0.36360 * NSHeight(bounds))];
    [forwardIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.63269 * NSWidth(bounds), NSMinY(bounds) + 0.62163 * NSHeight(bounds))];
    [forwardIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.60221 * NSWidth(bounds), NSMinY(bounds) + 0.65191 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.63269 * NSWidth(bounds), NSMinY(bounds) + 0.63837 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.61904 * NSWidth(bounds), NSMinY(bounds) + 0.65191 * NSHeight(bounds))];
    [forwardIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.60221 * NSWidth(bounds), NSMinY(bounds) + 0.65191 * NSHeight(bounds))];
    [forwardIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.60221 * NSWidth(bounds), NSMinY(bounds) + 0.65191 * NSHeight(bounds))];
    [forwardIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.60221 * NSWidth(bounds), NSMinY(bounds) + 0.65191 * NSHeight(bounds))];
    [forwardIconPath closePath];
    [forwardIconPath setMiterLimit: 4];
    [forwardIconPath setWindingRule: NSEvenOddWindingRule];
    [self.iconFillColor setFill];
    [forwardIconPath fill];
}

@end
