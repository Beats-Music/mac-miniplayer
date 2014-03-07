//
//  DSYSliderKnobView.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYSliderKnobView.h"

@interface DSYSliderKnobView ()
@property (nonatomic,assign) NSPoint lastDragLocation;
@end

@implementation DSYSliderKnobView

#pragma mark - Awake From Nib
-(void)awakeFromNib
{
    // Call super
    [super awakeFromNib];
    
    self.cursor = [NSCursor pointingHandCursor];
}

-(BOOL)acceptsFirstMouse:(NSEvent *)theEvent
{
    return YES;
}

#pragma mark - Drawing
- (void)drawRect:(NSRect)dirtyRect
{
    //// Color Declarations
    NSColor* color = [NSColor lightGrayColor];
    
    //// sliderKnobOval Drawing
    NSBezierPath* sliderKnobOvalPath = [NSBezierPath bezierPathWithOvalInRect:NSIntegralRect(NSInsetRect(self.bounds, 4.0, 4.0))];
    [[NSColor whiteColor] setFill];
    [sliderKnobOvalPath fill];
    
    [color setStroke];
    [sliderKnobOvalPath setLineWidth: 0.5];
    [sliderKnobOvalPath stroke];
}

#pragma mark - Mouse Events
-(void)mouseDown:(NSEvent *)theEvent
{
    // Call super
    [super mouseDown:theEvent];
    
    // Convert to superview's coordinate space
    self.lastDragLocation = [self.superview convertPoint:theEvent.locationInWindow
                                                fromView:nil];
    
    // Notify we've begun dragging
    if( self.sliderKnobDelegate )
    {
        if( [self.sliderKnobDelegate respondsToSelector:@selector(sliderKnobViewBeganDragging:)] )
        {
            [self.sliderKnobDelegate sliderKnobViewBeganDragging:self];
        }
    }
    
}

-(void)mouseUp:(NSEvent *)theEvent
{
    // Call super
    [super mouseUp:theEvent];
    
    // Notify we're done dragging
    if( self.sliderKnobDelegate )
    {
        if( [self.sliderKnobDelegate respondsToSelector:@selector(sliderKnobViewEndedDragging:)] )
        {
            [self.sliderKnobDelegate sliderKnobViewEndedDragging:self];
        }
    }
}

-(void)mouseDragged:(NSEvent *)theEvent {

    // We're working only in the superview's coordinate space, so we always convert.
    NSPoint newDragLocation = [self.superview convertPoint:theEvent.locationInWindow
                                                  fromView:nil];
    
    // Increment the origin and make sure it's bound between the min and max points
    NSPoint thisOrigin      = self.frame.origin;
    thisOrigin.x            += (-self.lastDragLocation.x + newDragLocation.x);
    thisOrigin.x            = MAX(thisOrigin.x, 0.0f);
    thisOrigin.x            = MIN(thisOrigin.x, self.superview.bounds.size.width - self.bounds.size.width);
    
    // Set new frame origin
    [self setFrameOrigin:thisOrigin];
    self.lastDragLocation = newDragLocation;
    
    // Notify delegate
    if( self.sliderKnobDelegate )
    {
        if( [self.sliderKnobDelegate respondsToSelector:@selector(sliderKnobView:draggedToPercentageOfSuperView:)] )
        {
            // Calculate percentage ( = origin.x + half bounds width )
            CGFloat progress = (thisOrigin.x + 0.5*self.bounds.size.width ) / self.superview.bounds.size.width;
            
            // Send to receiver
            [self.sliderKnobDelegate sliderKnobView:self
                     draggedToPercentageOfSuperView:progress];
        }
    }
}

@end
