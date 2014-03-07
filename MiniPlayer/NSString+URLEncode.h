//
//  NSString+URLEncode.h
//  SubscriptionsDashboard
//
//  Created by Syed Haris Ali on 2/21/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (URLEncode)

/**
 Creates a string that replaces all URL problematic characters with their URL encoded friendly equivalent.
 @return The NSString representing the URL encoded version of the string.
 */
-(NSString *)URLEncodedString;

@end
