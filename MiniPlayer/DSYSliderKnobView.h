//
//  DSYSliderKnobView.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYSliderView.h"
#import "DSYSliderKnobViewDelegate.h"

/**
 The DSYSliderKnobView, a subclass of the DSYView, provides a view with a circular knob drawn instead that is meant to be used within the context of a DSYSliderView.
 */
@interface DSYSliderKnobView : DSYView

#pragma mark - Properties
///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------

/**
 The DSYSliderKnobViewDelegate to receive the drag start/end events and new progress value (calculate from the superview's bounds and mapped between 0.0 - 1.0).
 */
@property (nonatomic,assign) id<DSYSliderKnobViewDelegate> sliderKnobDelegate;

@end
