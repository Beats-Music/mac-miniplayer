//
//  DSYView.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/1/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DSYViewDelegate.h"

/**
 The DSYView, a subclass of NSView, provides a hover friendly view to customize with whatever UI drawing is needed in subclasses.
 */
@interface DSYView : NSView

///-----------------------------------------------------------
/// @name Getting The Hover State
///-----------------------------------------------------------

/**
 A BOOL that tells the view whether or not it should track mouse hover events. Default is false.
 */
@property (nonatomic,assign) BOOL allowsHover;

/**
 A BOOL indicating whether the mouse is currently inside the view.
 */
@property (nonatomic,readonly) BOOL isHovered;

/**
 The DSYViewDelegate that acts as the receiver to get the mouse enter/exit events.
 */
@property (nonatomic,assign) id<DSYViewDelegate> viewDelegate;

///-----------------------------------------------------------
/// @name Look and Feel
///-----------------------------------------------------------

/**
 An NSColor representing the background color for the view.
 */
@property (nonatomic,strong) NSColor *backgroundColor;

///-----------------------------------------------------------
/// @name Setting The Cursor
///-----------------------------------------------------------

/**
 An NSCursor to display when the view is being hovered over. Default is the current cursor.
 */
@property (nonatomic,strong) NSCursor *cursor;

///-----------------------------------------------------------
/// @name Resetting The Tracking Areas
///-----------------------------------------------------------

/**
 Resets the tracking area based on the current bounds. Automatically happens when the bounds or frame changes.
 */
-(void)resetTrackingArea;

/**
 Sets the tracking area's options. Subclass should override. Default is (NSTrackingActiveAlways|NSTrackingMouseEnteredAndExited|NSTrackingCursorUpdate).
 */
+(NSTrackingAreaOptions)trackingAreaOptions;

@end
