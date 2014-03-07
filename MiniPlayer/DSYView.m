//
//  DSYView.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/1/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYView.h"

@interface DSYView () <DSYViewDelegate>
{
    NSTrackingArea *_mouseEnterExitTrackingArea;
}
@end

@implementation DSYView

#pragma mark - Initializations
- (id)init
{
    self = [super init];
    if (self) {
        [self _initializeView];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self _initializeView];
    }
    return self;
}

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self _initializeView];
    }
    return self;
}

#pragma mark - Initializations
-(void)_initializeView
{
    // Listen for window becoming key to update cursor correctly
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(windowBecameKey:)
                                                 name:NSWindowDidBecomeKeyNotification
                                               object:nil];
    
    // Start with pointing pointer cursor
    self.cursor = [NSCursor currentCursor];
    
    // Allow hover by default
    self.allowsHover = YES;
    
    // Default background is black
    self.backgroundColor = [NSColor blackColor];
}

#pragma mark - Awake From Nib
-(void)awakeFromNib
{
    [self resetTrackingArea];
    [self resetCursorRects];
}

#pragma mark - Drawing
-(void)drawRect:(NSRect)dirtyRect
{
    [NSGraphicsContext saveGraphicsState];
    
    // Draw background color
    if( self.backgroundColor )
    {
        [self.backgroundColor set];
        NSRectFill(self.bounds);
    }
    
    [NSGraphicsContext restoreGraphicsState];
}

#pragma mark - Setters
-(void)setAllowsHover:(BOOL)allowsHover
{
    // Return if same state is sent
    if( allowsHover == _allowsHover )
    {
        return;
    }
    else
    {
        // Set
        _allowsHover = allowsHover;
        
        // Reset tracking areas
        [self resetTrackingArea];
    }
}

-(void)setBackgroundColor:(NSColor *)backgroundColor
{
    // Set
    _backgroundColor = backgroundColor;
    
    // Redraw
    [self setNeedsDisplay:YES];
}

-(void)setCursor:(NSCursor *)cursor
{
    if( [cursor isEqual:_cursor] )
    {
        return;
    }
    else
    {
        // Check if nil and there is an existing cursor
        if( !cursor && self.cursor )
        {
            [self removeCursorRect:self.bounds
                            cursor:self.cursor];
        }
        
        // Set
        _cursor = cursor;
        
        // Reset tracking areas
        [self resetCursorRects];
    }
}

#pragma mark - Mouse Tracking
-(void)resetCursorRects
{
    // Super
    [super resetCursorRects];
    
    // Update cursor
    if( self.cursor )
    {
        [self addCursorRect:self.bounds
                     cursor:self.cursor];
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
    // Begin tracking
    if( _allowsHover )
    {
        // Create tracking area
        _mouseEnterExitTrackingArea = [[NSTrackingArea alloc] initWithRect:self.bounds
                                                                   options:[self.class trackingAreaOptions]
                                                                     owner:self
                                                                  userInfo:nil];
        [self addTrackingArea:_mouseEnterExitTrackingArea];
    }
    // Stop tracking
    else
    {
        // Remove tracking area
        if( _mouseEnterExitTrackingArea )
        {
            [self removeTrackingArea:_mouseEnterExitTrackingArea];
        }
    }
}

+(NSTrackingAreaOptions)trackingAreaOptions
{
    return (NSTrackingActiveAlways|NSTrackingMouseEnteredAndExited|NSTrackingCursorUpdate);
}

#pragma mark - Mouse Tracking
-(void)mouseEntered:(NSEvent *)theEvent
{
    // We're currently hovering
    _isHovered = YES;
    
    // Redraw
    [self setNeedsDisplay:YES];
    
    // Notify delegate
    if( self.viewDelegate )
    {
        if( [self.viewDelegate respondsToSelector:@selector(viewDidReceiveMouseEnter:)] )
        {
            [self.viewDelegate viewDidReceiveMouseEnter:self];
        }
    }
}

-(void)mouseExited:(NSEvent *)theEvent
{
    // Not hovering anymore
    _isHovered = NO;
    
    // Redraw
    [self setNeedsDisplay:YES];
    
    // Notify delegate
    if( self.viewDelegate )
    {
        if( [self.viewDelegate respondsToSelector:@selector(viewDidReceiveMouseExit:)] )
        {
            [self.viewDelegate viewDidReceiveMouseExit:self];
        }
    }
}

#pragma mark - Resizing
-(void)setBounds:(NSRect)aRect
{
    // Call super
    [super setBounds:aRect];
    
    // Reset tracking areas
    [self resetTrackingArea];
    
    // Redraw
    [self setNeedsDisplay:YES];
}

-(void)setFrame:(NSRect)frameRect
{
    // Call super
    [super setFrame:frameRect];
    
    // Reset tracking areas
    [self resetTrackingArea];
    
    // Redraw
    [self setNeedsDisplay:YES];
}

#pragma mark - Window Became Key
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
