//
//  DSYInputTextField.m
//  SubscriptionsDashboard
//
//  Created by Syed Haris Ali on 2/23/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYInputTextField.h"

#define DSY_INPUT_FIELD_FONT_SIZE 16

@implementation DSYInputTextField

-(void)awakeFromNib
{
    [super awakeFromNib];
    
    // Add bottom border
    self.wantsLayer = YES;
    CALayer *bottomBorder = [CALayer layer];
    bottomBorder.backgroundColor = [NSColor colorWithCalibratedRed: 0.76 green: 0.764 blue: 0.774 alpha: 1].CGColor;
    CGRect frame = self.layer.bounds;
    frame.size.height = 1.0;
    bottomBorder.frame = frame;
    [bottomBorder setAutoresizingMask:(NSViewWidthSizable)];
    [self.layer addSublayer:bottomBorder];
}

- (id)initWithFrame:(NSRect)frame
{
    if ((self = [super initWithFrame:frame])) {
        self.shouldShowFocus = NO;
    }
    return self;
}

-(NSColor *)backgroundColor
{
    return [NSColor whiteColor];
}

-(NSFont *)_inputFont
{
    return [NSFont fontWithName:@"Helvetica-Bold" size:DSY_INPUT_FIELD_FONT_SIZE];
}

- (void)drawFrameWithRect:(NSRect)rect
{
    [self.currentClippingPath setLineWidth:1.0];
    [self.currentClippingPath stroke];
}

- (NSPoint)textOffsetForHeight:(CGFloat)textHeight
{
    // center vertically
    return NSMakePoint(12.0, round(NSMidY(self.bounds) - textHeight / 2) );
}

- (CGFloat)textWidth
{
    // the size of our field minus the margin on both size
    return self.bounds.size.width - 12 * 2;
}

- (NSDictionary *)stringAttributes
{
    NSMutableDictionary *origAttrs = [super stringAttributes].mutableCopy;
    [origAttrs setObject:[self _inputFont] forKey:NSFontAttributeName];
    [origAttrs setObject:[NSColor darkGrayColor] forKey:NSForegroundColorAttributeName];
    return origAttrs;
}

- (NSDictionary *)placeholderStringAttributes
{
    NSMutableDictionary *origAttrs = [super placeholderStringAttributes].mutableCopy;
    [origAttrs setObject:[self _inputFont] forKey:NSFontAttributeName];
    [origAttrs setObject:[NSColor lightGrayColor] forKey:NSForegroundColorAttributeName];
    return origAttrs;
}

- (NSDictionary *)selectedStringAttributes
{
    return [NSDictionary dictionaryWithObjectsAndKeys:
            [NSColor whiteColor],    NSForegroundColorAttributeName,
            [NSColor redColor], NSBackgroundColorAttributeName, nil];
}

-(NSBezierPath *)clippingPath
{
    return [NSBezierPath bezierPathWithRect:self.bounds];
}

- (NSColor *)insertionPointColor
{
    return [NSColor redColor];
}

- (CGFloat)minimumWidth
{
    return self.bounds.size.width;
}

- (CGFloat)minimumHeight
{
    return self.bounds.size.height;
}

- (CGFloat)maximumWidth
{
    return self.minimumWidth;
}

- (CGFloat)maximumHeight
{
    return self.minimumHeight;
}

#pragma mark - Text Changed
- (void)textDidChange:(NSNotification *)pNotification
{
    // Call super
    [super textDidChange:pNotification];
    
    // Notify the delegate
    if( self.inputTextFieldDelegate )
    {
        if( [self.inputTextFieldDelegate respondsToSelector:@selector(inputField:textChanged:)] )
        {
            [self.inputTextFieldDelegate inputField:self
                                        textChanged:self.string];
        }
    }
}

@end
