//
//  DSYTextField.h
//  SubscriptionsDashboard
//
//  Created by Syed Haris Ali on 2/17/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Cocoa/Cocoa.h>

// Debug flag will draw boxes around the text field
#define DSY_TEXT_FIELD_DEBUG 0

/**
 The DSYTextField, a subclass of NSTextField, provides a text field with custom fonts. Subclasses of this class are expected to override the `customFont` method to return the proper font the view should use to draw its string value.
 */
@interface DSYTextField : NSTextField

#pragma mark - Overriding The Custom Font
///-----------------------------------------------------------
/// @name Overriding The Custom Font
///-----------------------------------------------------------

/**
 Provides the custom font for the particular instance (or subclass) of the DSYTextField.
 @return An NSFont representing the font the DSYTextField should use to draw its string content
 */
-(NSFont*)customFont;

@end
