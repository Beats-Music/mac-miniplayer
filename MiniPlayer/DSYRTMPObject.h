//
//  DSYRTMPObject.h
//  DSYRTMPPlayer
//
//  Created by Syed Haris Ali on 3/3/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 The DSYRTMPObject, a subclass of the NSObject, provides a simple wrapper around the RTMP response from the Beats Music API for a particular track. This RTMP information is "loaded" into the DSYRTMPPlayer for playback.
 */
@interface DSYRTMPObject : NSObject

#pragma mark - Properties
///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------

/**
 An NSNumber representing the bitrate of the rtmp object's track. Ex. (320)
 */
@property (nonatomic,copy) NSNumber *bitrate;

/**
 An NSString representing the codec of the rtmp object's track. Ex. (mp3)
 */
@property (nonatomic,copy) NSString *codec;

/**
 An NSString representing the location of the rtmp object's track. Ex. (cdn://...)
 */
@property (nonatomic,copy) NSString *location;

/**
 An NSString representing the resource of the rtmp object's track. Ex. (mp3://...)
 */
@property (nonatomic,copy) NSString *resource;

/**
 An NSString representing the type of the rtmp object's track. Ex. (audio_file)
 */
@property (nonatomic,copy) NSString *type;

#pragma mark - Class Initializer
///-----------------------------------------------------------
/// @name Class Initializer
///-----------------------------------------------------------
/**
 Creates an RTMP object with an NSDictionary containing keys for "bitrate", "codec", "location", "resource", and "type".
 @param dictionary An NSDictionary containing keys for "bitrate", "codec", "location", "resource", and "type".
 @return An DSYRTMPObject created using the input NSDictionary.
 */
+(instancetype)RTMPObjectWithDictionary:(NSDictionary *)dictionary;

@end
