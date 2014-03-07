//
//  NSDictionary+ObjectForKeyOrNil.h
//  Core Data Utilities
//
//  Created by Syed Haris Ali on 11/9/13.
//  Copyright (c) 2013 Syed Haris Ali. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (ObjectForKeyOrNil)

-(BOOL)hasObjectForKey:(NSString*)key;
-(id)objectForKeyOrNil:(id)key;
-(NSString*)objectForKeyOrNilAsString:(id)key;

@end
