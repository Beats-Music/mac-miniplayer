//
//  NSDictionary+ObjectForKeyOrNil.m
//  Core Data Utilities
//
//  Created by Syed Haris Ali on 11/9/13.
//  Copyright (c) 2013 Syed Haris Ali. All rights reserved.
//

#import "NSDictionary+ObjectForKeyOrNil.h"

@implementation NSDictionary (ObjectForKeyOrNil)

-(BOOL)hasObjectForKey:(NSString *)key {
  return [self objectForKey:key] ? YES : NO;
}

-(id)objectForKeyOrNil:(id)key {
  id val = [self objectForKey:key];
  if ([val isEqual:[NSNull null]]) {
    return nil;
  }
  return val;
}

-(NSString *)objectForKeyOrNilAsString:(id)key {
  return [NSString stringWithFormat:@"%@",[self objectForKeyOrNil:key]];
}

@end
