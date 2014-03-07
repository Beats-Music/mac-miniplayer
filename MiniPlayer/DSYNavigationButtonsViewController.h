//
//  DSYNavigationButtonsViewController.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYViewController.h"
@class DSYRadioButton;
@class DSYNavigationButtonsViewController;

typedef NS_ENUM(NSInteger, DSYNavigationBarSelection)
{
    DSYNavigationBarSelectionPlaylist,
    DSYNavigationBarSelectionSearch
};

@protocol DSYNavigationButtonsViewControllerDelegate <NSObject>

@required
-(void)navigationViewController:(DSYNavigationButtonsViewController *)viewController
               changedSelection:(DSYNavigationBarSelection)selection;

@end

@interface DSYNavigationButtonsViewController : DSYViewController

@property (nonatomic,assign) id<DSYNavigationButtonsViewControllerDelegate> navigationButtonsViewControllerDelegate;

@property (nonatomic,weak) IBOutlet DSYRadioButton *playlistsButton;
@property (nonatomic,weak) IBOutlet DSYRadioButton *searchButton;

@property (nonatomic,assign) DSYNavigationBarSelection selection;

-(IBAction)changedSelectionToPlaylist:(id)sender;
-(IBAction)changedSelectionToSearch:(id)sender;

@end
