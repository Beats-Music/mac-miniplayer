//
//  DSYSliderView.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYView.h"

#import "DSYSliderViewDelegate.h"
#import "DSYSliderKnobView.h"
#import "DSYSliderKnobViewDelegate.h"

@interface DSYSliderView : DSYView

#pragma mark - Properties
///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------

/**
 A DSYSliderViewDelegate to receive the mouse enter and mouse exit events on the DSYSliderView.
 */
@property (nonatomic,assign) id<DSYSliderViewDelegate> sliderDelegate;

#pragma mark - Configuring The Look and Feel
///-----------------------------------------------------------
/// @name Configuring The Look and Feel
///-----------------------------------------------------------

/**
 The background color behind the bar displaying the progress value. Default is clear.
 */
@property (nonatomic,strong,setter = setBarBackgroundColor:) NSColor *barBackgroundColor;

#pragma mark - Configuring The Look and Feel
///-----------------------------------------------------------
/// @name Updating The Progress Value
///-----------------------------------------------------------

/**
 The progress value of the view. Ranges from 0.0 - 1.0
 */
@property (nonatomic,assign,setter = setProgress:) CGFloat progress;

#pragma mark - The Slider's Knob
///-----------------------------------------------------------
/// @name The Slider's Knob
///-----------------------------------------------------------

/**
 The DSYSliderKnobView representing the slider's knob.
 */
@property (nonatomic,strong) DSYSliderKnobView *sliderKnobView;

@end
