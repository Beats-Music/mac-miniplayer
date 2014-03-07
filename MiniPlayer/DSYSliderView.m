//
//  DSYSliderView.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYSliderView.h"

@interface DSYSliderView () <DSYSliderKnobViewDelegate>
{
    BOOL   _isDragging;
    BOOL   _isInside;
    NSRect _originalFrame;
    NSRect _progressFrame;
}
@end

@implementation DSYSliderView

#pragma mark - Awake From Nib
-(void)awakeFromNib
{
    _originalFrame  = self.frame;
    self.progress   = 1.0;
    self.wantsLayer = YES;
    [self _updateKnobDrawing];
}

#pragma mark - Progress Rect
-(void)_updateProgressRectWithProgress:(CGFloat)progress
{
    // Start with the current frame
    NSRect  bounds       = self.bounds;
    NSRect  progressRect = bounds;
    CGFloat fillWidth    = [DSYMath mapValue:progress
                                     leftMin:0.0f
                                     leftMax:1.0f
                                    rightMin:0.0
                                    rightMax:bounds.size.width];
    progressRect.size.width = fillWidth;
    progressRect.origin.x   = bounds.origin.x;
    _progressFrame = progressRect;
}

#pragma mark - Drawing
-(void)drawRect:(NSRect)dirtyRect
{
    [NSGraphicsContext saveGraphicsState];
    
    // Draw the background bar rect (if color is specified)
    if( self.barBackgroundColor )
    {
        [self.barBackgroundColor set];
    }
    else
    {
        [[NSColor whiteColor] set];
    }
    NSRectFill(self.bounds);
    
    // Get the progress rect
    [self _updateProgressRectWithProgress:_progress];
    
    // Draw the gradient with the progress frame
    [self _drawGradientWithFrame:_progressFrame];
    
    [NSGraphicsContext restoreGraphicsState];
}

-(void)_drawGradientWithFrame:(NSRect)frame
{
    //// Color Declarations
    NSColor* startingColor = [NSColor colorWithCalibratedRed: 0.557 green: 0.133 blue: 0.467 alpha: 1];
    NSColor* endingColor = [NSColor colorWithCalibratedRed: 0.882 green: 0.051 blue: 0.251 alpha: 1];
    
    //// Gradient Declarations
    NSGradient* gradient2 = [[NSGradient alloc] initWithColorsAndLocations:
                             startingColor, 0.0,
                             [NSColor colorWithCalibratedRed: 0.72 green: 0.092 blue: 0.359 alpha: 1], 0.50,
                             endingColor, 1.0, nil];
    
    //// progressRect Drawing
    NSBezierPath* progressRectPath = [NSBezierPath bezierPathWithRect: NSMakeRect(NSMinX(frame) + floor(NSWidth(frame) * -0.00200 + 0.5), NSMinY(frame) + floor(NSHeight(frame) * 0.00000 + 0.5), floor(NSWidth(frame) * 1.00000 + 0.5) - floor(NSWidth(frame) * -0.00200 + 0.5), floor(NSHeight(frame) * 1.00000 + 0.5) - floor(NSHeight(frame) * 0.00000 + 0.5))];
    [gradient2 drawInBezierPath: progressRectPath angle: 0];
}

#pragma mark - Mouse Events
-(void)mouseDragged:(NSEvent *)theEvent
{
    // Call super
    [super mouseDragged:theEvent];
    
    // Currently dragging
    _isDragging = YES;
    
    // We're working only in the superview's coordinate space, so we always convert.
    NSPoint point = [self convertPoint:theEvent.locationInWindow
                              fromView:nil];
    
    // Update the knob
    [self _updateKnobDrawing];
    
    self.progress = point.x / self.bounds.size.width;
}

-(void)mouseDown:(NSEvent *)theEvent
{
//    // We're working only in the superview's coordinate space, so we always convert.
//    NSPoint point = [self convertPoint:theEvent.locationInWindow fromView:nil];
//
//    // Currently dragging
//    _isDragging = YES;
//    
//    self.progress = point.x / self.bounds.size.width;
//    
//    // Update the knob
//    [self _updateKnobDrawing];
}

-(void)mouseUp:(NSEvent *)theEvent
{
//    // Not dragging
//    _isDragging = NO;
//    
//    // Ended knob event
//    [self _endedKnobEvent];
//    
//    // Ended dragging
//    if( !_isDragging )
//    {
//        // Ended drag
//        if( self.sliderDelegate )
//        {
//            if( [self.sliderDelegate respondsToSelector:@selector(sliderViewEndedDragging:)] )
//            {
//                [self.sliderDelegate sliderViewEndedDragging:self];
//            }
//        }
//    }
}

-(void)mouseEntered:(NSEvent *)theEvent
{
    // Call super
    [super mouseEntered:theEvent];
    
    // Currently inside
    _isInside = YES;
    
//    // Resize frame
//    NSRect frame        = self.frame;
//    frame.size.height   = 8.0;
//    [self.animator setFrame:frame];
//    [self _updateKnobDrawing];
//    [self.sliderKnobView setHidden:NO];
}

-(void)mouseExited:(NSEvent *)theEvent
{
    // Call super
    [super mouseExited:theEvent];
    
    // Went outside
    _isInside = NO;
    
    // Ended knob event
    [self _endedKnobEvent];
}

#pragma mark - Setters
-(void)setSliderKnobView:(DSYSliderKnobView *)sliderKnobView
{
    // Set
    _sliderKnobView = sliderKnobView;
    
    // Setup the delegate
    if( _sliderKnobView )
    {
        _sliderKnobView.sliderKnobDelegate = self;
    }
    
    // Redraw the knob
    [self _updateKnobDrawing];
}

-(void)setProgress:(CGFloat)progress
{
    // Set
    _progress = progress;
    
    // Set on knob
    [self _updateKnobDrawing];
    
    if( self.sliderDelegate )
    {
        if( [self.sliderDelegate respondsToSelector:@selector(sliderView:updatedProgress:)] )
        {
            [self.sliderDelegate sliderView:self updatedProgress:_progress];
        }
    }
    
    // Redraw
    [self setNeedsDisplay:YES];
}

#pragma mark - Private DSYSliderView Drawing
-(void)_endedKnobEvent
{
//    if( !_isDragging && !_isInside )
//    {
//        NSRect frame        = self.frame;
//        frame.size.height   = 4.0;
//        [self.animator setFrame:frame];
//        [self.sliderKnobView setHidden:YES];
//    }
}

-(void)_updateKnobDrawing
{
    // Move knob
    CGFloat newX = [DSYMath mapValue:_progress
                             leftMin:0.0
                             leftMax:1.0
                            rightMin:self.bounds.origin.x
                            rightMax:self.superview.frame.size.width];
    NSPoint thisOrigin = self.sliderKnobView.frame.origin;
    thisOrigin.x = newX - 0.5*self.sliderKnobView.frame.size.width;
    thisOrigin.x            = MAX(thisOrigin.x, 0.0f);
    thisOrigin.x            = MIN(thisOrigin.x, self.bounds.size.width - self.sliderKnobView.bounds.size.width);
    thisOrigin.x            = floorf(thisOrigin.x);
    
    
    [self.sliderKnobView setFrameOrigin:thisOrigin];
}

#pragma mark - DSYSliderKnobViewDelegate
-(void)sliderKnobViewBeganDragging:(DSYSliderKnobView *)sliderKnobView
{
    _isDragging = YES;
}

-(void)sliderKnobViewEndedDragging:(DSYSliderKnobView *)sliderKnobView
{
    _isDragging = NO;
    
    // Ended knob event
    [self _endedKnobEvent];
    
    // Ended dragging
    if( !_isDragging && !_isInside )
    {
        // Ended drag
        if( self.sliderDelegate )
        {
            if( [self.sliderDelegate respondsToSelector:@selector(sliderViewEndedDragging:)] )
            {
                [self.sliderDelegate sliderViewEndedDragging:self];
            }
        }
    }
}

-(void)sliderKnobView:(DSYSliderKnobView *)sliderKnobView draggedToPercentageOfSuperView:(CGFloat)progress
{
    self.progress = progress;
}

@end
