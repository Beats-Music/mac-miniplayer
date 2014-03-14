//
//  DSYSliderViewDelegate.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DSYView.h"
@class DSYSliderView;

/**
 The DSYSliderViewDelegate, which conforms to the NSObject protocol, acts as the delegate for the DSYSliderView to listen for slider began/end drag events and the progress continuously as it is updated.
 */
@protocol DSYSliderViewDelegate <NSObject>

@required

#pragma mark - Updating The Slider Value
///-----------------------------------------------------------
/// @name Updating The Slider Value
///-----------------------------------------------------------

/**
 Provides a receiver a notification whenever a DSYSliderView has a mouse down event.
 @param sliderView The DSYSliderView that triggered the mouse event.
 */
-(void)sliderViewBeganDragging:(DSYSliderView *)sliderKnobView;

/**
 Provides a receiver a notification whenever a DSYSliderView has a mouse up event.
 @param sliderView The DSYSliderView that triggered the mouse event.
 */
-(void)sliderViewEndedDragging:(DSYSliderView *)sliderKnobView;

/**
 Provides a receiver a notification whenever a DSYSliderView has changed its progress value.
 @param sliderView The DSYSliderView that triggered the mouse entered event.
 @param progress   The new progress value as a float.
 */
-(void)sliderView:(DSYSliderView *)sliderView updatedProgress:(float)progress;

@end
