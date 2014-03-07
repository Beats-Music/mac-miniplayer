//
//  DSYButton.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYButton.h"

@interface DSYButton ()
{
    NSTrackingArea *_mouseEnterExitTrackingArea;
    CALayer        *_rightBorder;
}
@end

@implementation DSYButton
@synthesize buttonState = _buttonState;
@synthesize wantsRightBorder = _wantsRightBorder;

#pragma mark - Awake From Nib
-(void)awakeFromNib
{
    // Initialize the button interface and initial values
    [self _initializeButton];
    
    // Resets the notifications
    [self _initializeNotifications];
    
    // Resets the tracking area for hover effects
    [self resetTrackingArea];
    
    // Set the right border
    self.buttonOnOffState = DSYButtonOnOffStateOff;
    self.wantsRightBorder = YES;
}

#pragma mark - Initializations
-(void)_initializeButton
{
    // Set
    self.iconFillColor  = [NSColor whiteColor];
    _buttonState        = DSYButtonStateNormal;
    
    // Redraw
    [self setNeedsDisplay];
}

-(void)_initializeNotifications
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(windowBecameKey:)
                                                 name:NSWindowDidBecomeKeyNotification
                                               object:nil];
}

#pragma mark - Drawing

-(void)drawRect:(NSRect)dirtyRect
{
    [NSGraphicsContext saveGraphicsState];
    
    // Draw the background
    NSBezierPath *containerPath = [NSBezierPath bezierPathWithRect:self.bounds];
    [[self backgroundColorForState:self.buttonState] set];
    [containerPath fill];
    
    // Draw the custom icon
    [self drawCustomIcon];
    
    [NSGraphicsContext restoreGraphicsState];
}

-(void)drawCustomIcon
{
    // Override in subclass
}

#pragma mark - Tracking Areas
-(void)resetCursorRects
{
    [super resetCursorRects];
    if( self.isEnabled )
    {
        [self addCursorRect:self.bounds
                     cursor:[NSCursor pointingHandCursor]];
    }
    else
    {
        [self removeCursorRect:self.bounds
                        cursor:[NSCursor pointingHandCursor]];
    }
}

#pragma mark - Reset Tracking
-(void)resetTrackingArea
{
    // Remove any areas if one exists
    if( _mouseEnterExitTrackingArea )
    {
        [self removeTrackingArea:_mouseEnterExitTrackingArea];
        _mouseEnterExitTrackingArea = nil;
    }
    // Create tracking area
    _mouseEnterExitTrackingArea = [[NSTrackingArea alloc] initWithRect:self.bounds
                                                               options:(NSTrackingActiveAlways|NSTrackingMouseEnteredAndExited|NSTrackingCursorUpdate)
                                                                 owner:self
                                                              userInfo:nil];
    [self addTrackingArea:_mouseEnterExitTrackingArea];
}

#pragma mark - Setters
-(void)setButtonOnOffState:(DSYButtonOnOffState)buttonOnOffState
{
    // Set
    _buttonOnOffState = buttonOnOffState;
    
    // Redraw
    [self setNeedsDisplay:YES];
}

-(void)setEnabled:(BOOL)flag
{
    [super setEnabled:flag];
    [self resetCursorRects];
}

-(void)setWantsRightBorder:(BOOL)wantsRightBorder
{
    // Set
    _wantsRightBorder = wantsRightBorder;
    
    if( _wantsRightBorder )
    {
        self.wantsLayer = YES;
        _rightBorder = [CALayer layer];
        _rightBorder.backgroundColor = [NSColor colorWithCalibratedRed: 0.126 green: 0.126 blue: 0.126 alpha: 1].CGColor;
        CGRect frame = self.layer.bounds;
        frame.size.width = 1;
        frame.origin.x += self.frame.size.width - frame.size.width;
        _rightBorder.frame = frame;
        [_rightBorder setAutoresizingMask:(NSViewHeightSizable)];
        [self.layer addSublayer:_rightBorder];
    }
    else
    {
        if( _rightBorder )
        {
            [_rightBorder removeFromSuperlayer];
        }
    }
}

#pragma mark - Mouse Tracking
-(void)mouseDown:(NSEvent *)theEvent
{
    if( !self.isEnabled ){
        return;
    }
    _buttonState = DSYButtonStatePressed;
    [self setNeedsDisplay];
}

-(void)mouseUp:(NSEvent *)theEvent
{
    if( !self.isEnabled ){
        return;
    }
    NSPoint point = [self convertPoint:theEvent.locationInWindow fromView:nil];
    if( NSPointInRect(point, self.bounds) )
    {
        
        // Switch state
        _buttonState = DSYButtonStateHover;
        
        // Perform selector
        if( self.target )
        {
            if( [self.target respondsToSelector:self.action] )
            {
                    SuppressPerformSelectorLeakWarning([self.target performSelector:self.action withObject:nil]);
            }
        }
        
        // Switch on/off state
        _buttonOnOffState = !_buttonOnOffState;
        
    }
    else
    {
        _buttonState = DSYButtonStateNormal;
    }
    [self setNeedsDisplay];
}

-(void)mouseEntered:(NSEvent *)theEvent
{
    if( !self.isEnabled ){
        return;
    }
    [super mouseEntered:theEvent];
    _buttonState = DSYButtonStateHover;
    [self setNeedsDisplay];
}

-(void)mouseExited:(NSEvent *)theEvent
{
    if( !self.isEnabled ){
        return;
    }
    [super mouseExited:theEvent];
    // Not hovering anymore
    _buttonState = DSYButtonStateNormal;
    [self setNeedsDisplay];
}

#pragma mark - Subclass Override
-(NSColor *)backgroundColorForState:(DSYButtonState)state
{
    NSColor *color = [NSColor blackColor];
    if( !self.isEnabled )
    {
        return [color colorWithAlphaComponent:0.5];
    }
    switch (state)
    {
        case DSYButtonStateHover:
            color = [NSColor colorWithCalibratedWhite:0.1
                                                alpha:1.0];
            break;
        case DSYButtonStateNormal:
            color = [NSColor blackColor];
            break;
        case DSYButtonStatePressed:
            color = [NSColor blackColor];
            break;
        default:
            break;
    }
    return color;
}

#pragma mark - Window Key Notification
-(void)windowBecameKey:(NSNotification *)notification
{
    [self resetCursorRects];
}

#pragma mark - Cleanup
-(void)dealloc
{
    // Remove key window notification
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:NSWindowDidBecomeKeyNotification
                                                  object:nil];
    
    if( _mouseEnterExitTrackingArea )
    {
        [self removeTrackingArea:_mouseEnterExitTrackingArea];
    }
}

@end
