//
//  NSString+Time.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "NSString+Time.h"

@implementation NSString (Time)

+(NSString *)stringWithTimeIntervel:(NSTimeInterval)timeIntervel
{
    NSInteger ti = (NSInteger)timeIntervel;
    NSInteger seconds = ti % 60;
    NSInteger minutes = (ti / 60) % 60;
    return [NSString stringWithFormat:@"%02li:%02li", (long)minutes, (long)seconds];
}

@end
