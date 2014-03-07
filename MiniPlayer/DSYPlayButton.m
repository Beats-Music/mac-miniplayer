//
//  DSYPlayButton.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYPlayButton.h"

@implementation DSYPlayButton

#pragma mark - Custom Icon Drawing
-(void)drawCustomIcon
{
    switch (self.buttonOnOffState)
    {
        case DSYButtonOnOffStateOff:
            [self _drawPlayButton];
            break;
        case DSYButtonOnOffStateOn:
            [self _drawPauseButton];
            break;
        default:
            break;
    }
}

#pragma mark - Subdrawing
-(void)_drawPlayButton
{
    //// Frames
    NSRect bounds = self.bounds;
    
    //// playIcon Drawing
    NSBezierPath* playIconPath = [NSBezierPath bezierPath];
    [playIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.44824 * NSWidth(bounds), NSMinY(bounds) + 0.64786 * NSHeight(bounds))];
    [playIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.43151 * NSWidth(bounds), NSMinY(bounds) + 0.65500 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.44400 * NSWidth(bounds), NSMinY(bounds) + 0.65203 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.43731 * NSWidth(bounds), NSMinY(bounds) + 0.65500 * NSHeight(bounds))];
    [playIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.42434 * NSWidth(bounds), NSMinY(bounds) + 0.65262 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.42865 * NSWidth(bounds), NSMinY(bounds) + 0.65500 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.42712 * NSWidth(bounds), NSMinY(bounds) + 0.65377 * NSHeight(bounds))];
    [playIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.41000 * NSWidth(bounds), NSMinY(bounds) + 0.63121 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.41596 * NSWidth(bounds), NSMinY(bounds) + 0.64926 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.41000 * NSWidth(bounds), NSMinY(bounds) + 0.64006 * NSHeight(bounds))];
    [playIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.41000 * NSWidth(bounds), NSMinY(bounds) + 0.36718 * NSHeight(bounds))];
    [playIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.42434 * NSWidth(bounds), NSMinY(bounds) + 0.34815 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.41000 * NSWidth(bounds), NSMinY(bounds) + 0.35828 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.41599 * NSWidth(bounds), NSMinY(bounds) + 0.35151 * NSHeight(bounds))];
    [playIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.44824 * NSWidth(bounds), NSMinY(bounds) + 0.35291 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.43269 * NSWidth(bounds), NSMinY(bounds) + 0.34473 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.44185 * NSWidth(bounds), NSMinY(bounds) + 0.34663 * NSHeight(bounds))];
    [playIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.58209 * NSWidth(bounds), NSMinY(bounds) + 0.48373 * NSHeight(bounds))];
    [playIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.58209 * NSWidth(bounds), NSMinY(bounds) + 0.51466 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.59074 * NSWidth(bounds), NSMinY(bounds) + 0.49233 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.59074 * NSWidth(bounds), NSMinY(bounds) + 0.50614 * NSHeight(bounds))];
    [playIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.44824 * NSWidth(bounds), NSMinY(bounds) + 0.64786 * NSHeight(bounds))];
    [playIconPath closePath];
    [playIconPath setMiterLimit: 4];
    [playIconPath setWindingRule: NSEvenOddWindingRule];
    [self.iconFillColor setFill];
    [playIconPath fill];
}

-(void)_drawPauseButton
{
    //// Frames
    NSRect bounds = self.bounds;
    
    //// Bezier 26 Drawing
    NSBezierPath* bezier26Path = [NSBezierPath bezierPath];
    [bezier26Path moveToPoint: NSMakePoint(NSMinX(bounds) + 0.45803 * NSWidth(bounds), NSMinY(bounds) + 0.37891 * NSHeight(bounds))];
    [bezier26Path curveToPoint: NSMakePoint(NSMinX(bounds) + 0.42176 * NSWidth(bounds), NSMinY(bounds) + 0.34236 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.45803 * NSWidth(bounds), NSMinY(bounds) + 0.35867 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.44179 * NSWidth(bounds), NSMinY(bounds) + 0.34236 * NSHeight(bounds))];
    [bezier26Path curveToPoint: NSMakePoint(NSMinX(bounds) + 0.38557 * NSWidth(bounds), NSMinY(bounds) + 0.37891 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.40178 * NSWidth(bounds), NSMinY(bounds) + 0.34236 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.38557 * NSWidth(bounds), NSMinY(bounds) + 0.35867 * NSHeight(bounds))];
    [bezier26Path lineToPoint: NSMakePoint(NSMinX(bounds) + 0.38557 * NSWidth(bounds), NSMinY(bounds) + 0.61829 * NSHeight(bounds))];
    [bezier26Path curveToPoint: NSMakePoint(NSMinX(bounds) + 0.42176 * NSWidth(bounds), NSMinY(bounds) + 0.65490 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.38557 * NSWidth(bounds), NSMinY(bounds) + 0.63846 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.40178 * NSWidth(bounds), NSMinY(bounds) + 0.65490 * NSHeight(bounds))];
    [bezier26Path curveToPoint: NSMakePoint(NSMinX(bounds) + 0.45803 * NSWidth(bounds), NSMinY(bounds) + 0.61782 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.44179 * NSWidth(bounds), NSMinY(bounds) + 0.65490 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.45803 * NSWidth(bounds), NSMinY(bounds) + 0.63801 * NSHeight(bounds))];
    [bezier26Path lineToPoint: NSMakePoint(NSMinX(bounds) + 0.45803 * NSWidth(bounds), NSMinY(bounds) + 0.37891 * NSHeight(bounds))];
    [bezier26Path closePath];
    [bezier26Path moveToPoint: NSMakePoint(NSMinX(bounds) + 0.61800 * NSWidth(bounds), NSMinY(bounds) + 0.37891 * NSHeight(bounds))];
    [bezier26Path curveToPoint: NSMakePoint(NSMinX(bounds) + 0.58178 * NSWidth(bounds), NSMinY(bounds) + 0.34236 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.61800 * NSWidth(bounds), NSMinY(bounds) + 0.35867 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.60179 * NSWidth(bounds), NSMinY(bounds) + 0.34236 * NSHeight(bounds))];
    [bezier26Path curveToPoint: NSMakePoint(NSMinX(bounds) + 0.54554 * NSWidth(bounds), NSMinY(bounds) + 0.37891 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.56175 * NSWidth(bounds), NSMinY(bounds) + 0.34236 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.54554 * NSWidth(bounds), NSMinY(bounds) + 0.35867 * NSHeight(bounds))];
    [bezier26Path lineToPoint: NSMakePoint(NSMinX(bounds) + 0.54554 * NSWidth(bounds), NSMinY(bounds) + 0.61829 * NSHeight(bounds))];
    [bezier26Path curveToPoint: NSMakePoint(NSMinX(bounds) + 0.58178 * NSWidth(bounds), NSMinY(bounds) + 0.65490 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.54554 * NSWidth(bounds), NSMinY(bounds) + 0.63846 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.56175 * NSWidth(bounds), NSMinY(bounds) + 0.65490 * NSHeight(bounds))];
    [bezier26Path curveToPoint: NSMakePoint(NSMinX(bounds) + 0.61800 * NSWidth(bounds), NSMinY(bounds) + 0.61782 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.60179 * NSWidth(bounds), NSMinY(bounds) + 0.65490 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.61800 * NSWidth(bounds), NSMinY(bounds) + 0.63801 * NSHeight(bounds))];
    [bezier26Path lineToPoint: NSMakePoint(NSMinX(bounds) + 0.61800 * NSWidth(bounds), NSMinY(bounds) + 0.37891 * NSHeight(bounds))];
    [bezier26Path closePath];
    [bezier26Path setMiterLimit: 4];
    [bezier26Path setWindingRule: NSEvenOddWindingRule];
    [self.iconFillColor setFill];
    [bezier26Path fill];
}

@end
