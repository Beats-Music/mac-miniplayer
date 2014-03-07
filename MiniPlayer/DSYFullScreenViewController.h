//
//  DSYFullScreenViewController.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYViewController.h"

#import "DSYImageView.h"
#import "DSYLargeImageView.h"

@interface DSYFullScreenViewController : DSYViewController

@property (nonatomic,weak) IBOutlet DSYLargeImageView *coverImageView;

@property (nonatomic,weak) IBOutlet DSYImageView *trackImageView;

@property (nonatomic,weak) IBOutlet DSYTextField *artistLabel;

@property (nonatomic,weak) IBOutlet DSYTextField *titleLabel;

@end
