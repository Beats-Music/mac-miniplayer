//
//  DSYRTMPObject.m
//  DSYRTMPPlayer
//
//  Created by Syed Haris Ali on 3/3/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYRTMPObject.h"

@implementation DSYRTMPObject

#pragma mark - Class Initializers
+(instancetype)RTMPObjectWithDictionary:(NSDictionary *)dictionary
{
    DSYRTMPObject *rtmpObject   = [[DSYRTMPObject alloc] init];
    rtmpObject.bitrate          = dictionary[@"bitrate"];
    rtmpObject.codec            = dictionary[@"codec"];
    rtmpObject.location         = dictionary[@"location"];
    rtmpObject.resource         = dictionary[@"resource"];
    rtmpObject.type             = dictionary[@"type"];
    return rtmpObject;
}

#pragma mark - Description
-(NSString *)description
{
    return [NSString stringWithFormat:@"{ bitrate: %@, codec: %@, location: %@, resource: %@, type: %@ }",
            self.bitrate,
            self.codec,
            self.location,
            self.resource,
            self.type];
}

@end
