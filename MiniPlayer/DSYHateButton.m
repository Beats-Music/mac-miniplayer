//
//  DSYHateButton.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYHateButton.h"

@implementation DSYHateButton

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
    
    //// hateIcon Drawing
    NSBezierPath* hateIconPath = [NSBezierPath bezierPath];
    [hateIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.67672 * NSWidth(bounds), NSMinY(bounds) + 0.45016 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.65486 * NSWidth(bounds), NSMinY(bounds) + 0.39061 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.67672 * NSWidth(bounds), NSMinY(bounds) + 0.42873 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.66834 * NSWidth(bounds), NSMinY(bounds) + 0.40779 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.67060 * NSWidth(bounds), NSMinY(bounds) + 0.37484 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.67060 * NSWidth(bounds), NSMinY(bounds) + 0.35384 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.67639 * NSWidth(bounds), NSMinY(bounds) + 0.36904 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.67639 * NSWidth(bounds), NSMinY(bounds) + 0.35963 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.64964 * NSWidth(bounds), NSMinY(bounds) + 0.35384 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.66482 * NSWidth(bounds), NSMinY(bounds) + 0.34804 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.65542 * NSWidth(bounds), NSMinY(bounds) + 0.34804 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.63366 * NSWidth(bounds), NSMinY(bounds) + 0.36984 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.57622 * NSWidth(bounds), NSMinY(bounds) + 0.34949 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.61690 * NSWidth(bounds), NSMinY(bounds) + 0.35725 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.59678 * NSWidth(bounds), NSMinY(bounds) + 0.34949 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.49795 * NSWidth(bounds), NSMinY(bounds) + 0.38769 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.54355 * NSWidth(bounds), NSMinY(bounds) + 0.34949 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.51681 * NSWidth(bounds), NSMinY(bounds) + 0.36643 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.41968 * NSWidth(bounds), NSMinY(bounds) + 0.34949 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.47909 * NSWidth(bounds), NSMinY(bounds) + 0.36643 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.45235 * NSWidth(bounds), NSMinY(bounds) + 0.34949 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.36122 * NSWidth(bounds), NSMinY(bounds) + 0.37061 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.39870 * NSWidth(bounds), NSMinY(bounds) + 0.34949 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.37819 * NSWidth(bounds), NSMinY(bounds) + 0.35756 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.34449 * NSWidth(bounds), NSMinY(bounds) + 0.35384 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.32352 * NSWidth(bounds), NSMinY(bounds) + 0.35384 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.33870 * NSWidth(bounds), NSMinY(bounds) + 0.34804 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.32931 * NSWidth(bounds), NSMinY(bounds) + 0.34804 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.32352 * NSWidth(bounds), NSMinY(bounds) + 0.37484 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.31773 * NSWidth(bounds), NSMinY(bounds) + 0.35963 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.31773 * NSWidth(bounds), NSMinY(bounds) + 0.36904 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.34026 * NSWidth(bounds), NSMinY(bounds) + 0.39161 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.31918 * NSWidth(bounds), NSMinY(bounds) + 0.45016 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.32723 * NSWidth(bounds), NSMinY(bounds) + 0.40860 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.31918 * NSWidth(bounds), NSMinY(bounds) + 0.42915 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.40831 * NSWidth(bounds), NSMinY(bounds) + 0.59559 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.31918 * NSWidth(bounds), NSMinY(bounds) + 0.51071 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.36141 * NSWidth(bounds), NSMinY(bounds) + 0.55977 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.38282 * NSWidth(bounds), NSMinY(bounds) + 0.62112 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.38282 * NSWidth(bounds), NSMinY(bounds) + 0.64212 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.37703 * NSWidth(bounds), NSMinY(bounds) + 0.62691 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.37703 * NSWidth(bounds), NSMinY(bounds) + 0.63632 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.39330 * NSWidth(bounds), NSMinY(bounds) + 0.64647 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.38571 * NSWidth(bounds), NSMinY(bounds) + 0.64502 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.38951 * NSWidth(bounds), NSMinY(bounds) + 0.64647 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.40378 * NSWidth(bounds), NSMinY(bounds) + 0.64212 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.39709 * NSWidth(bounds), NSMinY(bounds) + 0.64647 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.40088 * NSWidth(bounds), NSMinY(bounds) + 0.64502 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.43287 * NSWidth(bounds), NSMinY(bounds) + 0.61298 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.48711 * NSWidth(bounds), NSMinY(bounds) + 0.64411 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.45209 * NSWidth(bounds), NSMinY(bounds) + 0.62562 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.47100 * NSWidth(bounds), NSMinY(bounds) + 0.63604 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.49706 * NSWidth(bounds), NSMinY(bounds) + 0.64647 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.49024 * NSWidth(bounds), NSMinY(bounds) + 0.64569 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.49365 * NSWidth(bounds), NSMinY(bounds) + 0.64647 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.50701 * NSWidth(bounds), NSMinY(bounds) + 0.64411 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.50047 * NSWidth(bounds), NSMinY(bounds) + 0.64647 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.50387 * NSWidth(bounds), NSMinY(bounds) + 0.64569 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.56140 * NSWidth(bounds), NSMinY(bounds) + 0.61313 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.52676 * NSWidth(bounds), NSMinY(bounds) + 0.63422 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.54492 * NSWidth(bounds), NSMinY(bounds) + 0.62387 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.59035 * NSWidth(bounds), NSMinY(bounds) + 0.64212 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.60083 * NSWidth(bounds), NSMinY(bounds) + 0.64647 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.59323 * NSWidth(bounds), NSMinY(bounds) + 0.64502 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.59704 * NSWidth(bounds), NSMinY(bounds) + 0.64647 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.61131 * NSWidth(bounds), NSMinY(bounds) + 0.64212 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.60461 * NSWidth(bounds), NSMinY(bounds) + 0.64647 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.60841 * NSWidth(bounds), NSMinY(bounds) + 0.64502 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.61131 * NSWidth(bounds), NSMinY(bounds) + 0.62112 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.61710 * NSWidth(bounds), NSMinY(bounds) + 0.63632 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.61710 * NSWidth(bounds), NSMinY(bounds) + 0.62691 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.58607 * NSWidth(bounds), NSMinY(bounds) + 0.59584 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.67672 * NSWidth(bounds), NSMinY(bounds) + 0.45016 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.64510 * NSWidth(bounds), NSMinY(bounds) + 0.55122 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.67672 * NSWidth(bounds), NSMinY(bounds) + 0.50106 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.67672 * NSWidth(bounds), NSMinY(bounds) + 0.45016 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.67672 * NSWidth(bounds), NSMinY(bounds) + 0.45016 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.67672 * NSWidth(bounds), NSMinY(bounds) + 0.50106 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.67672 * NSWidth(bounds), NSMinY(bounds) + 0.45016 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.67672 * NSWidth(bounds), NSMinY(bounds) + 0.45016 * NSHeight(bounds))];
    [hateIconPath closePath];
    [hateIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.41968 * NSWidth(bounds), NSMinY(bounds) + 0.39404 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.47823 * NSWidth(bounds), NSMinY(bounds) + 0.43692 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.44646 * NSWidth(bounds), NSMinY(bounds) + 0.39404 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.46795 * NSWidth(bounds), NSMinY(bounds) + 0.41713 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.49795 * NSWidth(bounds), NSMinY(bounds) + 0.44892 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.48205 * NSWidth(bounds), NSMinY(bounds) + 0.44429 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.48965 * NSWidth(bounds), NSMinY(bounds) + 0.44892 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.51768 * NSWidth(bounds), NSMinY(bounds) + 0.43692 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.50624 * NSWidth(bounds), NSMinY(bounds) + 0.44892 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.51385 * NSWidth(bounds), NSMinY(bounds) + 0.44429 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.57622 * NSWidth(bounds), NSMinY(bounds) + 0.39404 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.52796 * NSWidth(bounds), NSMinY(bounds) + 0.41714 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.54945 * NSWidth(bounds), NSMinY(bounds) + 0.39404 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.60173 * NSWidth(bounds), NSMinY(bounds) + 0.40184 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.58489 * NSWidth(bounds), NSMinY(bounds) + 0.39404 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.59372 * NSWidth(bounds), NSMinY(bounds) + 0.39697 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.49706 * NSWidth(bounds), NSMinY(bounds) + 0.50668 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.39308 * NSWidth(bounds), NSMinY(bounds) + 0.40252 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.41968 * NSWidth(bounds), NSMinY(bounds) + 0.39404 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.40137 * NSWidth(bounds), NSMinY(bounds) + 0.39724 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.41062 * NSWidth(bounds), NSMinY(bounds) + 0.39404 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.41968 * NSWidth(bounds), NSMinY(bounds) + 0.39404 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.41968 * NSWidth(bounds), NSMinY(bounds) + 0.39404 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.41062 * NSWidth(bounds), NSMinY(bounds) + 0.39404 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.41968 * NSWidth(bounds), NSMinY(bounds) + 0.39404 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.41968 * NSWidth(bounds), NSMinY(bounds) + 0.39404 * NSHeight(bounds))];
    [hateIconPath closePath];
    [hateIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.36365 * NSWidth(bounds), NSMinY(bounds) + 0.45016 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.37211 * NSWidth(bounds), NSMinY(bounds) + 0.42352 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.36365 * NSWidth(bounds), NSMinY(bounds) + 0.44108 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.36685 * NSWidth(bounds), NSMinY(bounds) + 0.43182 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.47610 * NSWidth(bounds), NSMinY(bounds) + 0.52768 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.44012 * NSWidth(bounds), NSMinY(bounds) + 0.56372 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.36365 * NSWidth(bounds), NSMinY(bounds) + 0.45016 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.40114 * NSWidth(bounds), NSMinY(bounds) + 0.53501 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.36365 * NSWidth(bounds), NSMinY(bounds) + 0.49559 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.36365 * NSWidth(bounds), NSMinY(bounds) + 0.45016 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.36365 * NSWidth(bounds), NSMinY(bounds) + 0.45016 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.36365 * NSWidth(bounds), NSMinY(bounds) + 0.49559 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.36365 * NSWidth(bounds), NSMinY(bounds) + 0.45016 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.36365 * NSWidth(bounds), NSMinY(bounds) + 0.45016 * NSHeight(bounds))];
    [hateIconPath closePath];
    [hateIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.49708 * NSWidth(bounds), NSMinY(bounds) + 0.59917 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.46509 * NSWidth(bounds), NSMinY(bounds) + 0.58070 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.48768 * NSWidth(bounds), NSMinY(bounds) + 0.59419 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.47668 * NSWidth(bounds), NSMinY(bounds) + 0.58799 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.49706 * NSWidth(bounds), NSMinY(bounds) + 0.54868 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.52918 * NSWidth(bounds), NSMinY(bounds) + 0.58085 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.49708 * NSWidth(bounds), NSMinY(bounds) + 0.59917 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.51914 * NSWidth(bounds), NSMinY(bounds) + 0.58709 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.50844 * NSWidth(bounds), NSMinY(bounds) + 0.59321 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.49708 * NSWidth(bounds), NSMinY(bounds) + 0.59917 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.49708 * NSWidth(bounds), NSMinY(bounds) + 0.59917 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.50844 * NSWidth(bounds), NSMinY(bounds) + 0.59321 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.49708 * NSWidth(bounds), NSMinY(bounds) + 0.59917 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.49708 * NSWidth(bounds), NSMinY(bounds) + 0.59917 * NSHeight(bounds))];
    [hateIconPath closePath];
    [hateIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.55428 * NSWidth(bounds), NSMinY(bounds) + 0.56400 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.51802 * NSWidth(bounds), NSMinY(bounds) + 0.52768 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.62309 * NSWidth(bounds), NSMinY(bounds) + 0.42243 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.63225 * NSWidth(bounds), NSMinY(bounds) + 0.45016 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.62877 * NSWidth(bounds), NSMinY(bounds) + 0.43102 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.63225 * NSWidth(bounds), NSMinY(bounds) + 0.44068 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.55428 * NSWidth(bounds), NSMinY(bounds) + 0.56400 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.63225 * NSWidth(bounds), NSMinY(bounds) + 0.48760 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.60455 * NSWidth(bounds), NSMinY(bounds) + 0.52737 * NSHeight(bounds))];
    [hateIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.55428 * NSWidth(bounds), NSMinY(bounds) + 0.56400 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.55428 * NSWidth(bounds), NSMinY(bounds) + 0.56400 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.60455 * NSWidth(bounds), NSMinY(bounds) + 0.52737 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.55428 * NSWidth(bounds), NSMinY(bounds) + 0.56400 * NSHeight(bounds))];
    [hateIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.55428 * NSWidth(bounds), NSMinY(bounds) + 0.56400 * NSHeight(bounds))];
    [hateIconPath closePath];
    [hateIconPath setMiterLimit: 4];
    [hateIconPath setWindingRule: NSEvenOddWindingRule];
    [self.iconFillColor setFill];
    [hateIconPath fill];
}

@end
