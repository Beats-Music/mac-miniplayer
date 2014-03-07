//
//  DSYMath.h
//  SubscriptionsDashboard
//
//  Created by Syed Haris Ali on 2/18/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DSYMath : NSObject

/**
 Maps a value from one coordinate system to another (2-D)
 @param value    The current float value to map
 @param leftMin  The minimum float value of the current value
 @param leftMax  The maximum float value of the current value
 @param rightMin The minimum float value of the expected coordinate system
 @param rightMax The maximum float value of the expected coordinate system
 @return The mapped float value in the new coordinate system
 */
+(float)mapValue:(float)value
         leftMin:(float)leftMin
         leftMax:(float)leftMax
        rightMin:(float)rightMin
        rightMax:(float)rightMax;

/**
 Calculates the root mean squared value for an array of values
 @param buffer     An array of floats to use to calculate the rms
 @param bufferSize The size of the float array
 @return A float representing the root mean squared value of the array
 */
+(float)rmsForArray:(float *)buffer
             length:(int)bufferSize;

@end
