//
//  NSURL+ParseQuery.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/4/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "NSURL+ParseQuery.h"

@implementation NSURL (ParseQuery)

-(NSDictionary *)queryComponents
{
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    for (NSString *param in [self.query componentsSeparatedByString:@"&"]) {
        NSArray *parts = [param componentsSeparatedByString:@"="];
        if([parts count] < 2) continue;
        [params setObject:[parts objectAtIndex:1] forKey:[parts objectAtIndex:0]];
    }
    return params.copy;
}

@end
