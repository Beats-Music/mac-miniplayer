//
//  DSYTextFieldBol.m
//  SubscriptionsDashboard
//
//  Created by Syed Haris Ali on 2/17/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYTextFieldBol.h"

@implementation DSYTextFieldBol

#pragma mark - Custom Font
-(NSFont *)customFont
{
    return [NSFont fontWithName:@"Helvetica-Bold" size:self.font.pointSize];
}

@end
