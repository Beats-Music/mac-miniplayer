//
//  DSYShareButton.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYShareButton.h"

@implementation DSYShareButton

#pragma mark - Custom Icon Drawing
-(void)drawCustomIcon
{
    //// Frames
    NSRect bounds = self.bounds;
    
    //// shareIcon Drawing
    NSBezierPath* shareIconPath = [NSBezierPath bezierPath];
    [shareIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.63027 * NSWidth(bounds), NSMinY(bounds) + 0.47354 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.61013 * NSWidth(bounds), NSMinY(bounds) + 0.50341 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.61777 * NSWidth(bounds), NSMinY(bounds) + 0.47354 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.61013 * NSWidth(bounds), NSMinY(bounds) + 0.49088 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.61013 * NSWidth(bounds), NSMinY(bounds) + 0.54428 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.51842 * NSWidth(bounds), NSMinY(bounds) + 0.54428 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.49515 * NSWidth(bounds), NSMinY(bounds) + 0.55851 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.50804 * NSWidth(bounds), NSMinY(bounds) + 0.54428 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.49762 * NSWidth(bounds), NSMinY(bounds) + 0.55020 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.45808 * NSWidth(bounds), NSMinY(bounds) + 0.58536 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.45808 * NSWidth(bounds), NSMinY(bounds) + 0.56832 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.43636 * NSWidth(bounds), NSMinY(bounds) + 0.54428 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.45808 * NSWidth(bounds), NSMinY(bounds) + 0.54884 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.45170 * NSWidth(bounds), NSMinY(bounds) + 0.54428 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.36396 * NSWidth(bounds), NSMinY(bounds) + 0.54428 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.36396 * NSWidth(bounds), NSMinY(bounds) + 0.39523 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.47980 * NSWidth(bounds), NSMinY(bounds) + 0.39523 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.50161 * NSWidth(bounds), NSMinY(bounds) + 0.37437 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.49230 * NSWidth(bounds), NSMinY(bounds) + 0.39523 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.50161 * NSWidth(bounds), NSMinY(bounds) + 0.38674 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.47898 * NSWidth(bounds), NSMinY(bounds) + 0.35198 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.50161 * NSWidth(bounds), NSMinY(bounds) + 0.36200 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.49148 * NSWidth(bounds), NSMinY(bounds) + 0.35198 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.34315 * NSWidth(bounds), NSMinY(bounds) + 0.35198 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.32051 * NSWidth(bounds), NSMinY(bounds) + 0.37437 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.33065 * NSWidth(bounds), NSMinY(bounds) + 0.35198 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.32051 * NSWidth(bounds), NSMinY(bounds) + 0.36201 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.32051 * NSWidth(bounds), NSMinY(bounds) + 0.56421 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.32241 * NSWidth(bounds), NSMinY(bounds) + 0.57322 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.32051 * NSWidth(bounds), NSMinY(bounds) + 0.56742 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.32120 * NSWidth(bounds), NSMinY(bounds) + 0.57046 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.34465 * NSWidth(bounds), NSMinY(bounds) + 0.59236 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.32610 * NSWidth(bounds), NSMinY(bounds) + 0.58235 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.33704 * NSWidth(bounds), NSMinY(bounds) + 0.59236 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.41705 * NSWidth(bounds), NSMinY(bounds) + 0.59236 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.41705 * NSWidth(bounds), NSMinY(bounds) + 0.63563 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.42978 * NSWidth(bounds), NSMinY(bounds) + 0.65448 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.41705 * NSWidth(bounds), NSMinY(bounds) + 0.64672 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.41990 * NSWidth(bounds), NSMinY(bounds) + 0.65269 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.43361 * NSWidth(bounds), NSMinY(bounds) + 0.65483 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.43082 * NSWidth(bounds), NSMinY(bounds) + 0.65472 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.43208 * NSWidth(bounds), NSMinY(bounds) + 0.65483 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.43384 * NSWidth(bounds), NSMinY(bounds) + 0.65486 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.43369 * NSWidth(bounds), NSMinY(bounds) + 0.65483 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.43376 * NSWidth(bounds), NSMinY(bounds) + 0.65486 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.43385 * NSWidth(bounds), NSMinY(bounds) + 0.65486 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.43386 * NSWidth(bounds), NSMinY(bounds) + 0.65486 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.43387 * NSWidth(bounds), NSMinY(bounds) + 0.65486 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.45418 * NSWidth(bounds), NSMinY(bounds) + 0.64485 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.44200 * NSWidth(bounds), NSMinY(bounds) + 0.65485 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.44972 * NSWidth(bounds), NSMinY(bounds) + 0.65096 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.52325 * NSWidth(bounds), NSMinY(bounds) + 0.59236 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.63427 * NSWidth(bounds), NSMinY(bounds) + 0.59236 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.65357 * NSWidth(bounds), NSMinY(bounds) + 0.56111 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.64678 * NSWidth(bounds), NSMinY(bounds) + 0.59236 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.65357 * NSWidth(bounds), NSMinY(bounds) + 0.57363 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.65357 * NSWidth(bounds), NSMinY(bounds) + 0.49620 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.63027 * NSWidth(bounds), NSMinY(bounds) + 0.47354 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.65357 * NSWidth(bounds), NSMinY(bounds) + 0.48367 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.64280 * NSWidth(bounds), NSMinY(bounds) + 0.47354 * NSHeight(bounds))];
    [shareIconPath closePath];
    [shareIconPath moveToPoint: NSMakePoint(NSMinX(bounds) + 0.66248 * NSWidth(bounds), NSMinY(bounds) + 0.35295 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.63406 * NSWidth(bounds), NSMinY(bounds) + 0.33753 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.65642 * NSWidth(bounds), NSMinY(bounds) + 0.34368 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.64597 * NSWidth(bounds), NSMinY(bounds) + 0.33753 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.63209 * NSWidth(bounds), NSMinY(bounds) + 0.33773 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.63338 * NSWidth(bounds), NSMinY(bounds) + 0.33753 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.63276 * NSWidth(bounds), NSMinY(bounds) + 0.33769 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.63027 * NSWidth(bounds), NSMinY(bounds) + 0.33753 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.63149 * NSWidth(bounds), NSMinY(bounds) + 0.33768 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.63089 * NSWidth(bounds), NSMinY(bounds) + 0.33753 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.56983 * NSWidth(bounds), NSMinY(bounds) + 0.33753 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.54867 * NSWidth(bounds), NSMinY(bounds) + 0.35209 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.56045 * NSWidth(bounds), NSMinY(bounds) + 0.33753 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.55204 * NSWidth(bounds), NSMinY(bounds) + 0.34333 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.55467 * NSWidth(bounds), NSMinY(bounds) + 0.37705 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.54531 * NSWidth(bounds), NSMinY(bounds) + 0.36085 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.54770 * NSWidth(bounds), NSMinY(bounds) + 0.37078 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.57458 * NSWidth(bounds), NSMinY(bounds) + 0.39497 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.53046 * NSWidth(bounds), NSMinY(bounds) + 0.44310 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.53186 * NSWidth(bounds), NSMinY(bounds) + 0.47513 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.52200 * NSWidth(bounds), NSMinY(bounds) + 0.45233 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.52262 * NSWidth(bounds), NSMinY(bounds) + 0.46667 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.54717 * NSWidth(bounds), NSMinY(bounds) + 0.48108 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.53620 * NSWidth(bounds), NSMinY(bounds) + 0.47913 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.54169 * NSWidth(bounds), NSMinY(bounds) + 0.48108 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.56389 * NSWidth(bounds), NSMinY(bounds) + 0.47374 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.55330 * NSWidth(bounds), NSMinY(bounds) + 0.48108 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.55941 * NSWidth(bounds), NSMinY(bounds) + 0.47862 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.60828 * NSWidth(bounds), NSMinY(bounds) + 0.42531 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.63023 * NSWidth(bounds), NSMinY(bounds) + 0.44505 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.64540 * NSWidth(bounds), NSMinY(bounds) + 0.45087 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.63448 * NSWidth(bounds), NSMinY(bounds) + 0.44887 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.63990 * NSWidth(bounds), NSMinY(bounds) + 0.45087 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.65462 * NSWidth(bounds), NSMinY(bounds) + 0.44892 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.64851 * NSWidth(bounds), NSMinY(bounds) + 0.45087 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.65165 * NSWidth(bounds), NSMinY(bounds) + 0.45022 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.66805 * NSWidth(bounds), NSMinY(bounds) + 0.42821 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.66279 * NSWidth(bounds), NSMinY(bounds) + 0.44526 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.66805 * NSWidth(bounds), NSMinY(bounds) + 0.43715 * NSHeight(bounds))];
    [shareIconPath lineToPoint: NSMakePoint(NSMinX(bounds) + 0.66805 * NSWidth(bounds), NSMinY(bounds) + 0.36776 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.66248 * NSWidth(bounds), NSMinY(bounds) + 0.35295 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.66805 * NSWidth(bounds), NSMinY(bounds) + 0.36208 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.66593 * NSWidth(bounds), NSMinY(bounds) + 0.35693 * NSHeight(bounds))];
    [shareIconPath curveToPoint: NSMakePoint(NSMinX(bounds) + 0.66248 * NSWidth(bounds), NSMinY(bounds) + 0.35295 * NSHeight(bounds)) controlPoint1: NSMakePoint(NSMinX(bounds) + 0.66248 * NSWidth(bounds), NSMinY(bounds) + 0.35295 * NSHeight(bounds)) controlPoint2: NSMakePoint(NSMinX(bounds) + 0.66593 * NSWidth(bounds), NSMinY(bounds) + 0.35693 * NSHeight(bounds))];
    [shareIconPath closePath];
    [shareIconPath setMiterLimit: 4];
    [shareIconPath setWindingRule: NSEvenOddWindingRule];
    [self.iconFillColor setFill];
    [shareIconPath fill];
}

@end
