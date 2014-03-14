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

/**
 The DSYNavigationBarSelection provides constant values that describe the different selections possible for the DSYNavigationButtonsViewController.
 */
typedef NS_ENUM(NSInteger, DSYNavigationBarSelection)
{
    /**
     Selected the playlist navigation button.
     */
    DSYNavigationBarSelectionPlaylist,
    /**
     Selected the search navigation button.
     */
    DSYNavigationBarSelectionSearch,
    /**
     None are selected.
     */
    DSYNavigationBarSelectionNone
};

/**
 The DSYNavigationButtonsViewControllerDelegate, which conforms to NSObject, provides a receiver for the DSYNavigationButtonsViewController to notify whenever there is a change in the navigation button selection.
 */
@protocol DSYNavigationButtonsViewControllerDelegate <NSObject>

@required

#pragma mark - Navigation Changed Selection
///-----------------------------------------------------------
/// @name Navigation Changed Selection
///-----------------------------------------------------------

/**
 Notifies the DSYNavigationButtonsViewControllerDelegate of a new selection on the DSYNavigationButtonsViewController.
 @param viewController The DSYNavigationButtonsViewController that triggered the event.
 @param selection      A DSYNavigationBarSelection representing the new selection state of the DSYNavigationButtonsViewController.
 */
-(void)navigationViewController:(DSYNavigationButtonsViewController *)viewController
               changedSelection:(DSYNavigationBarSelection)selection;

@end

/**
 The DSYNavigationButtonsViewController, a subclass of the DSYViewController, provides a view controller to handle the application left navigation bar. Whenever there is a new selection it notifies its DSYNavigationButtonsViewControllerDelegate of the change with the `navigationViewController:changedSelection:` event.
 */
@interface DSYNavigationButtonsViewController : DSYViewController

#pragma mark - Properties
///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------

/**
 The DSYNavigationButtonsViewControllerDelegate that will receive the navigation selection changed event.
 */
@property (nonatomic,assign) id<DSYNavigationButtonsViewControllerDelegate> navigationButtonsViewControllerDelegate;

/**
 The DSYRadioButton that is used to represent a playlist selection (DSYNavigationBarSelectionPlaylist)
 */
@property (nonatomic,weak) IBOutlet DSYRadioButton *playlistsButton;

/**
 The DSYRadioButton that is used to represent a search selection (DSYNavigationBarSelectionSearch)
 */
@property (nonatomic,weak) IBOutlet DSYRadioButton *searchButton;

/**
 The DSYNavigationBarSelection representing the current selection state.
 */
@property (nonatomic,assign) DSYNavigationBarSelection selection;

#pragma mark - Events
///-----------------------------------------------------------
/// @name Events
///-----------------------------------------------------------

/**
 Triggered when the playlistButton is pressed. Changes the selection to DSYNavigationBarSelectionPlaylist and notifies the delegate.
 @param sender The object (id) that triggered the event.
 */
-(IBAction)changedSelectionToPlaylist:(id)sender;

/**
 Triggered when the searchButton is pressed. Changes the selection to DSYNavigationBarSelectionSearch and notifies the delegate.
 @param sender The object (id) that triggered the event.
 */
-(IBAction)changedSelectionToSearch:(id)sender;

@end
