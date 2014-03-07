//
//  DSYSliderKnobView.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYSliderView.h"
#import "DSYSliderKnobViewDelegate.h"

@interface DSYSliderKnobView : DSYView

@property (nonatomic,assign) id<DSYSliderKnobViewDelegate> sliderKnobDelegate;

@end
