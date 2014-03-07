//
//  DSYSliderKnobViewDelegate.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DSYSliderKnobView;

@protocol DSYSliderKnobViewDelegate <NSObject>

@required
-(void)sliderKnobViewBeganDragging:(DSYSliderKnobView *)sliderKnobView;
-(void)sliderKnobViewEndedDragging:(DSYSliderKnobView *)sliderKnobView;
-(void)sliderKnobView:(DSYSliderKnobView *)sliderKnobView draggedToPercentageOfSuperView:(CGFloat)progress;

@end
