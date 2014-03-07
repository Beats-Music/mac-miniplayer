//
//  DSYTextField.m
//  SubscriptionsDashboard
//
//  Created by Syed Haris Ali on 2/17/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYTextField.h"

@interface DSYTextField ()
{
    NSTrackingArea *_mouseEnterExitTrackingArea;
}
@end

@implementation DSYTextField

#pragma mark - Custom Font
-(NSFont *)customFont
{
    return [NSFont fontWithName:@"Helvetica"
                           size:self.font.pointSize];
}

-(CGFloat)adjustmentY
{
    return 0.0f;
}

#pragma mark - Initializations
-(id)init
{
    self = [super init];
    if( self )
    {
        [self _initialize];
    }
    return self;
}

-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if( self )
    {
        [self _initialize];
    }
    return self;
}

-(id)initWithFrame:(NSRect)frameRect
{
    self = [super initWithFrame:frameRect];
    if( self )
    {
        [self _initialize];
    }
    return self;
}

#pragma mark - Main Initializer
-(void)_initialize
{
    self.font                = self.customFont;
    self.stringValue         = NSLocalizedString(self.stringValue, nil);
}

#pragma mark - Drawing
-(void)drawRect:(NSRect)dirtyRect
{
    // Call super
    [super drawRect:dirtyRect];
    
    // Draw debug rect if needed
    if( DSY_TEXT_FIELD_DEBUG )
    {
        [[[NSColor lightGrayColor] colorWithAlphaComponent:0.2] set];
        NSFrameRect(self.bounds);
    }
}

@end
