//
//  DSYMath.h
//  SubscriptionsDashboard
//
//  Created by Syed Haris Ali on 2/18/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 The DSYMath, a subclass of NSObject, provides class methods to perform common mathematical operations. Very useful for custom drawing!
 */
@interface DSYMath : NSObject

#pragma mark - Mapping A Value
///-----------------------------------------------------------
/// @name Mapping A Value
///-----------------------------------------------------------

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

@end
