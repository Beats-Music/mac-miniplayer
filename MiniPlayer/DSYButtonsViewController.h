//
//  DSYButtonsViewController.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYViewController.h"
@class DSYButton;

@interface DSYButtonsViewController : DSYViewController

@property (nonatomic,weak) IBOutlet DSYButton *playButton;
@property (nonatomic,weak) IBOutlet DSYButton *backButton;
@property (nonatomic,weak) IBOutlet DSYButton *forwardButton;
@property (nonatomic,weak) IBOutlet DSYButton *showMoreButton;

-(IBAction)togglePlay:(id)sender;
-(IBAction)previousTrack:(id)sender;
-(IBAction)nextTrack:(id)sender;

@end
