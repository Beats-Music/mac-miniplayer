//
//  DSYLoveButton.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYLoveButton.h"

@implementation DSYLoveButton

-(void)awakeFromNib
{
    [super awakeFromNib];
    self.iconFillColor = [NSColor lightGrayColor];
}

#pragma mark - Custom Icon Drawing
-(void)drawCustomIcon
{
    //// Frames
    NSRect bounds = self.bounds;
    
    //// loveIcon Drawing
    NSBezierPath* loveIconPath = [NSBezierPath bezierPath];
    [loveIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.49769 * NSWidth(bounds), NSMinY(bounds) + 0.64649 * NSHeight(bounds))];
    [loveIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.48774 * NSWidth(bounds), NSMinY(bounds) + 0.64414 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.49428 * NSWidth(bounds), NSMinY(bounds) + 0.64649 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.49087 * NSWidth(bounds), NSMinY(bounds) + 0.64571 * NSHeight(bounds))];
    [loveIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.31981 * NSWidth(bounds), NSMinY(bounds) + 0.45017 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.42502 * NSWidth(bounds), NSMinY(bounds) + 0.61273 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.31981 * NSWidth(bounds), NSMinY(bounds) + 0.54574 * NSHeight(bounds))];
    [loveIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.42031 * NSWidth(bounds), NSMinY(bounds) + 0.34947 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.31981 * NSWidth(bounds), NSMinY(bounds) + 0.39840 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.36865 * NSWidth(bounds), NSMinY(bounds) + 0.34947 * NSHeight(bounds))];
    [loveIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.49858 * NSWidth(bounds), NSMinY(bounds) + 0.38769 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.45298 * NSWidth(bounds), NSMinY(bounds) + 0.34947 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.47972 * NSWidth(bounds), NSMinY(bounds) + 0.36641 * NSHeight(bounds))];
    [loveIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.57685 * NSWidth(bounds), NSMinY(bounds) + 0.34947 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.51744 * NSWidth(bounds), NSMinY(bounds) + 0.36641 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.54417 * NSWidth(bounds), NSMinY(bounds) + 0.34947 * NSHeight(bounds))];
    [loveIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.67735 * NSWidth(bounds), NSMinY(bounds) + 0.45017 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.62851 * NSWidth(bounds), NSMinY(bounds) + 0.34947 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.67735 * NSWidth(bounds), NSMinY(bounds) + 0.39840 * NSHeight(bounds))];
    [loveIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.50763 * NSWidth(bounds), NSMinY(bounds) + 0.64414 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.67735 * NSWidth(bounds), NSMinY(bounds) + 0.52043 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.61707 * NSWidth(bounds), NSMinY(bounds) + 0.58932 * NSHeight(bounds))];
    [loveIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.49769 * NSWidth(bounds), NSMinY(bounds) + 0.64649 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.50450 * NSWidth(bounds), NSMinY(bounds) + 0.64571 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.50109 * NSWidth(bounds), NSMinY(bounds) + 0.64649 * NSHeight(bounds))];
    [loveIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.49769 * NSWidth(bounds), NSMinY(bounds) + 0.64649 * NSHeight(bounds))];
    [loveIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.49769 * NSWidth(bounds), NSMinY(bounds) + 0.64649 * NSHeight(bounds))];
    [loveIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.49769 * NSWidth(bounds), NSMinY(bounds) + 0.64649 * NSHeight(bounds))];
    [loveIconPath closePath];
    [loveIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.42031 * NSWidth(bounds), NSMinY(bounds) + 0.39403 * NSHeight(bounds))];
    [loveIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.36427 * NSWidth(bounds), NSMinY(bounds) + 0.45017 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.39308 * NSWidth(bounds), NSMinY(bounds) + 0.39403 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.36427 * NSWidth(bounds), NSMinY(bounds) + 0.42289 * NSHeight(bounds))];
    [loveIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.49770 * NSWidth(bounds), NSMinY(bounds) + 0.59918 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.36427 * NSWidth(bounds), NSMinY(bounds) + 0.51921 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.45088 * NSWidth(bounds), NSMinY(bounds) + 0.57440 * NSHeight(bounds))];
    [loveIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.63287 * NSWidth(bounds), NSMinY(bounds) + 0.45017 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.58378 * NSWidth(bounds), NSMinY(bounds) + 0.55398 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.63287 * NSWidth(bounds), NSMinY(bounds) + 0.50001 * NSHeight(bounds))];
    [loveIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.57685 * NSWidth(bounds), NSMinY(bounds) + 0.39403 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.63287 * NSWidth(bounds), NSMinY(bounds) + 0.42289 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.60407 * NSWidth(bounds), NSMinY(bounds) + 0.39403 * NSHeight(bounds))];
    [loveIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.51830 * NSWidth(bounds), NSMinY(bounds) + 0.43692 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.55007 * NSWidth(bounds), NSMinY(bounds) + 0.39403 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.52858 * NSWidth(bounds), NSMinY(bounds) + 0.41713 * NSHeight(bounds))];
    [loveIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.49858 * NSWidth(bounds), NSMinY(bounds) + 0.44890 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.51448 * NSWidth(bounds), NSMinY(bounds) + 0.44429 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.50687 * NSWidth(bounds), NSMinY(bounds) + 0.44890 * NSHeight(bounds))];
    [loveIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.49858 * NSWidth(bounds), NSMinY(bounds) + 0.44890 * NSHeight(bounds))];
    [loveIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.47885 * NSWidth(bounds), NSMinY(bounds) + 0.43691 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.49028 * NSWidth(bounds), NSMinY(bounds) + 0.44890 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.48268 * NSWidth(bounds), NSMinY(bounds) + 0.44429 * NSHeight(bounds))];
    [loveIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.42031 * NSWidth(bounds), NSMinY(bounds) + 0.39403 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.46858 * NSWidth(bounds), NSMinY(bounds) + 0.41713 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.44708 * NSWidth(bounds), NSMinY(bounds) + 0.39403 * NSHeight(bounds))];
    [loveIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.42031 * NSWidth(bounds), NSMinY(bounds) + 0.39403 * NSHeight(bounds))];
    [loveIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.42031 * NSWidth(bounds), NSMinY(bounds) + 0.39403 * NSHeight(bounds))];
    [loveIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.42031 * NSWidth(bounds), NSMinY(bounds) + 0.39403 * NSHeight(bounds))];
    [loveIconPath closePath];
    [loveIconPath setMiterLimit: 4];
    [loveIconPath setWindingRule: NSEvenOddWindingRule];
    [self.iconFillColor setFill];
    [loveIconPath fill];
}

@end
