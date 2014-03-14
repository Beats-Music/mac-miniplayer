//
//  DSYMath.m
//  SubscriptionsDashboard
//
//  Created by Syed Haris Ali on 2/18/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYMath.h"

@implementation DSYMath

+(float)mapValue:(float)value
         leftMin:(float)leftMin
         leftMax:(float)leftMax
        rightMin:(float)rightMin
        rightMax:(float)rightMax
{
    float leftSpan    = leftMax  - leftMin;
    float rightSpan   = rightMax - rightMin;
    float valueScaled = ( value  - leftMin ) / leftSpan;
    return rightMin + (valueScaled * rightSpan);
}

@end
