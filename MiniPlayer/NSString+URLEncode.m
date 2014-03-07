//
//  NSString+URLEncode.m
//  SubscriptionsDashboard
//
//  Created by Syed Haris Ali on 2/21/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "NSString+URLEncode.h"

@implementation NSString (URLEncode)

-(NSString*)URLEncodedString {
    return (NSString *)CFBridgingRelease(CFURLCreateStringByAddingPercentEscapes(NULL,
                                                                                 (CFStringRef)self,
                                                                                 NULL,
                                                                                 (CFStringRef)@"!*'();:@&=+$,/?%#[]",
                                                                                 kCFStringEncodingUTF8));
}

@end
