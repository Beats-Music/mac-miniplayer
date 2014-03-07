//
//  DSYButton.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Cocoa/Cocoa.h>

/**
 Describes the various state of the DSYButton
 */
typedef NS_ENUM(NSInteger, DSYButtonState)
{
    /**
     Hover state (mouse is over button)
     */
    DSYButtonStateHover,
    /**
     Normal state (mouse is not over button or pressing it)
     */
    DSYButtonStateNormal,
    /**
     Pressed state (mouse is pressing button)
     */
    DSYButtonStatePressed
};

/**
 Describes the on/off state of the DSYButton
 */
typedef NS_ENUM(NSInteger, DSYButtonOnOffState)
{
    /**
     The on state
     */
    DSYButtonOnOffStateOn,
    /**
     The off state
     */
    DSYButtonOnOffStateOff
};

/**
 The DSYButton, a subclass of the NSButton, provides a custom branded control for a rounded button with the Beats Music brand font.
 */
@interface DSYButton : NSButton

#pragma mark - Properties
///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------

/**
 The DSYButtonState that describes the button's current UI state.
 */
@property (nonatomic,assign) DSYButtonState buttonState;

/**
 The DSYButtonOnOffState that describes the on/off button state.
 */
@property (nonatomic,assign) DSYButtonOnOffState buttonOnOffState;

/**
 An NSColor that will be used for the custom icon's fill color. Default is white.
 */
@property (nonatomic,strong) NSColor *iconFillColor;

/**
 A BOOL indicating whether the button wants a right border
 */
@property (nonatomic,assign) BOOL wantsRightBorder;

#pragma mark - Custom Icon Drawing
///-----------------------------------------------------------
/// @name Drawing A Custom Icon
///-----------------------------------------------------------

/**
 Provides subclasses a method to override to provide a background color for the right state
 @return An NSColor representing the color
 */
-(NSColor *)backgroundColorForState:(DSYButtonState)state;

/**
 A function that is executed during drawing to draw a custom icon using bezier paths within the button's bounds. Subclasses will override this for custom icon drawing. In this application custom vector-based drawing code for icons have been generated using PaintCode.
 */
-(void)drawCustomIcon;

#pragma mark - Tracking Areas
///-----------------------------------------------------------
/// @name Resetting The Tracking Areas
///-----------------------------------------------------------

/**
 Resets the tracking area based on the current bounds. Automatically happens when the bounds or frame changes.
 */
-(void)resetTrackingArea;

@end
