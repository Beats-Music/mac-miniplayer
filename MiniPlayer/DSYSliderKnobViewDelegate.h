//
//  DSYSliderKnobViewDelegate.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DSYSliderKnobView;

/**
 The DSYSliderKnobViewDelegate, which conforms to the NSObject protocol, acts as the delegate for the DSYSliderKnobView to listen for a knob's began/end drag events and the progress continuously as it is updated.
 */
@protocol DSYSliderKnobViewDelegate <NSObject>

@required

#pragma mark - Updating The Slider Knob Value
///-----------------------------------------------------------
/// @name Updating The Slider Knob Value
///-----------------------------------------------------------

/**
 Provides a receiver a notification whenever a DSYSliderKnobView has a mouse down event.
 @param sliderView The DSYSliderKnobView that triggered the mouse event.
 */
-(void)sliderKnobViewBeganDragging:(DSYSliderKnobView *)sliderKnobView;

/**
 Provides a receiver a notification whenever a DSYSliderKnobView has a mouse down event.
 @param sliderView The DSYSliderKnobView that triggered the mouse event.
 */
-(void)sliderKnobViewEndedDragging:(DSYSliderKnobView *)sliderKnobView;

/**
 Provides a receiver a notification whenever a DSYSliderKnobView has been dragged (continuously) and provides the amount dragged as a progress value between 0.0 - 1.0.
 @param sliderView     The DSYSliderKnobView that triggered the mouse event.
 @param progress       A CGFloat representing the percent of the superview's width that was dragged. Superview's origin = 0.0, superview's width = 1.0.
 */
-(void)sliderKnobView:(DSYSliderKnobView *)sliderKnobView draggedToPercentageOfSuperView:(CGFloat)progress;

@end
