//
//  DSYViewDelegate.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DSYView;

/**
 The DSYViewDelegate, which conforms to the NSObject protocol, acts as the delegate for the DSYView class to communicate back mouse enter/exit events.
 */
@protocol DSYViewDelegate <NSObject>

@optional

#pragma mark - Mouse Events
///-----------------------------------------------------------
/// @name Mouse Events
///-----------------------------------------------------------

/**
 Triggered anytime a DSYView receives a mouse enter event.
 @param view The DSYView that triggered the event.
 */
-(void)viewDidReceiveMouseEnter:(DSYView *)view;

/**
 Triggered anytime a DSYView receives a mouse exit event.
 @param view The DSYView that triggered the event.
 */
-(void)viewDidReceiveMouseExit:(DSYView *)view;

@end
