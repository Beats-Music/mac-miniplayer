//
//  NSString+Time.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 The NSString+Time category extension provides a way to get formatted 'mm:ss' string representations of a time in seconds.
 */
@interface NSString (Time)

#pragma mark - String From Time Interval
///-----------------------------------------------------------
/// @name String From Time Interval
///-----------------------------------------------------------

/**
 Provides a string formatted as 'mm:ss' from a time intervel provided in seconds.
 @param timeIntervel An NSTimeIntervel representing the time intervel in seconds.
 @return An NSString formatted as 'mm:ss' representing the input NSTimeInterval.
 */
+(NSString *)stringWithTimeInterval:(NSTimeInterval)timeInterval;

@end
