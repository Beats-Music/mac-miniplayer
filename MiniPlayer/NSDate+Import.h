//
//  NSDate+Import.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/1/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (Import)

/**
 Creates an NSDate instance from a string that is 'yyyy-MM-dd' formatted. If the string does not match the NSDate 'yyyy-MM-dd' format, then nil will be returned. If the string is nil then it will just return back nil.
 @param string The NSString instance formatted as 'yyyy-MM-dd' that represents the expected NSDate instance.
 @return An NSDate instance created by parsing the formatted string. nil if the string is not the proper date format or if the string argument is nil.
 */
+(NSDate *)dateWithYYYYMMSSStringOrNil:(NSString *)string;

/**
 Creates an NSDate instance from a string that is formatted according to the dateFormat argument. If the string does not match the dateFormat then nil will be returned. If the string is nil then it will return nil.
 @param string The NSString instance formatted according to the dateFormat.
 @param dateFormat An NSString representing the expected date format to use for parsing the string argument.
 @return An NSDate instance created by parsing the formatted string. nil if the string is not the proper date format or if the string argument is nil.
 */
+(NSDate *)dateWithString:(NSString *)string
          usingDateFormat:(NSString *)dateFormat;

@end
