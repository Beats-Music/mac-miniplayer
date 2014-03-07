//
//  DSYRTMPObject.h
//  DSYRTMPPlayer
//
//  Created by Syed Haris Ali on 3/3/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DSYRTMPObject : NSObject

@property (nonatomic,copy) NSNumber *bitrate;
@property (nonatomic,copy) NSString *codec;
@property (nonatomic,copy) NSString *location;
@property (nonatomic,copy) NSString *resource;
@property (nonatomic,copy) NSString *type;

#pragma mark - Class Initializer
+(instancetype)RTMPObjectWithDictionary:(NSDictionary *)dictionary;

@end
