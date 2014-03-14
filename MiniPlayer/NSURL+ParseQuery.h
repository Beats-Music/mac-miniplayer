//
//  NSURL+ParseQuery.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/4/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 The NSURL+ParseQuery category extension provides an instance method to parse an NSURL instance's query parameters.
 */
@interface NSURL (ParseQuery)

#pragma mark - Parsing URL Query Parameters
///-----------------------------------------------------------
/// @name Parsing URL Query Parameters
///-----------------------------------------------------------

/**
 Parses the url's query parameters and provides an NSDictionary containing the NSURL query parameters in a key-value format.
 @return An NSDictionary containing the url's parameters as key-value pairs.
 */
-(NSDictionary *)queryComponents;

@end
