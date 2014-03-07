//
//  DSYRadioButton.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYRadioButton.h"

@implementation DSYRadioButton

#pragma mark - Awake From Nib
-(void)awakeFromNib
{
    // Call super
    [super awakeFromNib];
    
    // No border
    self.wantsRightBorder = NO;
}

#pragma mark - Background Colors
-(NSColor *)backgroundColorForState:(DSYButtonState)state
{
    NSColor *color = nil;
    switch (self.buttonOnOffState)
    {
        case DSYButtonOnOffStateOff:
            color = [NSColor blackColor];
            break;
        case DSYButtonOnOffStateOn:
            color = [NSColor colorWithWhite:0.3 alpha:1.0];
            break;
        default:
            break;
    }
    switch (self.buttonState) {
        case DSYButtonStateHover:
            if( self.buttonOnOffState == DSYButtonOnOffStateOff )
            {
                color = [NSColor colorWithCalibratedWhite:0.1
                                                    alpha:1.0];
            }
            break;
            
        default:
            break;
    }
    return color;
}

#pragma mark - Mouse Override
-(void)mouseUp:(NSEvent *)theEvent
{
    NSPoint point = [self convertPoint:theEvent.locationInWindow fromView:nil];
    if( NSPointInRect(point, self.bounds) )
    {
        
        // Switch state
        self.buttonState = DSYButtonStateHover;
        
        if( self.buttonOnOffState == DSYButtonOnOffStateOff )
        {
            // Perform selector
            if( self.target )
            {
                if( [self.target respondsToSelector:self.action] )
                {
                    SuppressPerformSelectorLeakWarning([self.target performSelector:self.action withObject:nil]);
                }
            }
            self.buttonOnOffState = !self.buttonOnOffState;
        }
        
    }
    else
    {
        self.buttonState = DSYButtonStateNormal;
    }
    [self setNeedsDisplay];
}

@end
