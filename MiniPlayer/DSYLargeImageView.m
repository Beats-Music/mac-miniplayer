//
//  DSYLargeImageView.m
//  largeImageClip
//
//  Created by dre on 3/6/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYLargeImageView.h"

@implementation DSYLargeImageView

- (void)drawRect:(NSRect)dirtyRect
{

    // Calculate the image size so it always fits the width and resizes with the proper aspect ratio
    NSSize  imageSize       = self.image.size;
    CGFloat ratio           = imageSize.height / imageSize.width;
    CGFloat targetWidth     = self.bounds.size.width;
    CGFloat targetHeight    = targetWidth * ratio;
    CGFloat clipHeight      = targetHeight > self.bounds.size.height ? targetHeight - self.bounds.size.height : 0.0;
    NSRect  targetRect      = NSMakeRect(0.0, -clipHeight, targetWidth, targetHeight);
    
    [NSGraphicsContext saveGraphicsState];
    
    // Draw the image
    [self.image drawInRect:targetRect
                  fromRect:NSMakeRect(0.0, 0.0, imageSize.width, imageSize.height)
                 operation:NSCompositeSourceOver
                  fraction:0.35
            respectFlipped:YES
                     hints:nil];
    
    [NSGraphicsContext restoreGraphicsState];
    
    // Draw a white bottom section
    CGFloat whiteBottomSectionHeight = self.bounds.size.height / 6.0;
    
    //// Color Declarations
    NSColor* shadowColorWhiteSection = [NSColor colorWithCalibratedRed: 1 green: 1 blue: 1 alpha: 0.5];
    NSColor* topShadowColor = [NSColor colorWithWhite:0.123 alpha:1.0];
    
    //// Shadow Declarations
    NSShadow* shadow = [[NSShadow alloc] init];
    [shadow setShadowColor: topShadowColor];
    [shadow setShadowOffset: NSMakeSize(0.1, -3.1)];
    [shadow setShadowBlurRadius: 5.5];
    
    //// Frames
    NSRect frame = NSMakeRect(0.0, 0.0, self.bounds.size.width, whiteBottomSectionHeight);
    
    //// Abstracted Attributes
    NSRect topWhiteLineRect = NSMakeRect(NSMinX(frame), NSMinY(frame) + NSHeight(frame) - 1, NSWidth(frame), 1);
    
    
    //// topWhiteLine Drawing
    NSBezierPath* topWhiteLinePath = [NSBezierPath bezierPathWithRect: topWhiteLineRect];
    [[NSColor whiteColor] setFill];
    [topWhiteLinePath fill];
    
    //// whiteSection Drawing
    NSBezierPath* whiteSectionPath = [NSBezierPath bezierPathWithRect: NSMakeRect(NSMinX(frame) + floor(NSWidth(frame) * 0.00000 + 0.5), NSMinY(frame) + floor(NSHeight(frame) * 0.00000 + 0.5), floor(NSWidth(frame) * 1.00000 + 0.5) - floor(NSWidth(frame) * 0.00000 + 0.5), floor(NSHeight(frame) * 1.00000 + 0.5) - floor(NSHeight(frame) * 0.00000 + 0.5))];
    [shadowColorWhiteSection setFill];
    [whiteSectionPath fill];
    
    ////// whiteSection Inner Shadow
    NSRect whiteSectionBorderRect = NSInsetRect([whiteSectionPath bounds], -shadow.shadowBlurRadius, -shadow.shadowBlurRadius);
    whiteSectionBorderRect = NSOffsetRect(whiteSectionBorderRect, -shadow.shadowOffset.width, -shadow.shadowOffset.height);
    whiteSectionBorderRect = NSInsetRect(NSUnionRect(whiteSectionBorderRect, [whiteSectionPath bounds]), -1, -1);
    
    NSBezierPath* whiteSectionNegativePath = [NSBezierPath bezierPathWithRect: whiteSectionBorderRect];
    [whiteSectionNegativePath appendBezierPath: whiteSectionPath];
    [whiteSectionNegativePath setWindingRule: NSEvenOddWindingRule];
    
    [NSGraphicsContext saveGraphicsState];
    {
        NSShadow* shadowWithOffset = [shadow copy];
        CGFloat xOffset = shadowWithOffset.shadowOffset.width + round(whiteSectionBorderRect.size.width);
        CGFloat yOffset = shadowWithOffset.shadowOffset.height;
        shadowWithOffset.shadowOffset = NSMakeSize(xOffset + copysign(0.1, xOffset), yOffset + copysign(0.1, yOffset));
        [shadowWithOffset set];
        [[NSColor grayColor] setFill];
        [whiteSectionPath addClip];
        NSAffineTransform* transform = [NSAffineTransform transform];
        [transform translateXBy: -round(whiteSectionBorderRect.size.width) yBy: 0];
        [[transform transformBezierPath: whiteSectionNegativePath] fill];
    }
    [NSGraphicsContext restoreGraphicsState];
    
}

@end
