//
//  NSDate+Import.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/1/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "NSDate+Import.h"

@implementation NSDate (Import)

+(NSDate *)dateWithYYYYMMSSStringOrNil:(NSString *)string
{
    return [self dateWithString:string
                usingDateFormat:@"yyyy-MM-dd"];
}

+(NSDate *)dateWithString:(NSString *)string
          usingDateFormat:(NSString *)dateFormat
{
    // If nil, return nil
    if( !string )
    {
        return nil;
    }
    // Parse date forrmat and return date
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:dateFormat];
    return [dateFormatter dateFromString:string];
}

@end
