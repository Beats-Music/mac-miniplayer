//
//  DSYSearchViewController.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYTableViewController.h"
@class DSYSearchViewController;

/**
 The DSYSearchViewControllerDelegate, which conforms to the NSObject protocol, provides a receiver for the DSYSearchViewController to notify if a particular album was selected.
 */
@protocol DSYSearchViewControllerDelegate <NSObject>

@required

#pragma mark - Album Selection Changed
///-----------------------------------------------------------
/// @name Album Selection Changed
///-----------------------------------------------------------

/**
 Notifies the DSYSearchViewControllerDelegate of a new album selection on the DSYSearchViewController.
 @param searchViewController The DSYSearchViewController that triggered the event.
 @param album                The DSYAlbum that was selected.
 */
-(void)searchViewController:(DSYSearchViewController *)searchViewController
      changedAlbumSelection:(DSYAlbum *)album;

@end

/**
 The DSYSearchViewController, a subclass of the DSYTableViewController, provides a view controller that allows searching the Beats Music API for a particular album. There is a text field at the top of the view that performs a search-as-you-type feature and, upon getting search results, will load the results into the tableview. When a particular DSYAlbum is chosen from the tableview it triggers the `searchViewController:changedAlbumSelection:` on its DSYSearchViewControllerDelegate.
 */
@interface DSYSearchViewController : DSYTableViewController <DSYInputTextFieldDelegate>

#pragma mark - Properties
///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------

/**
 An NSMutableArray containing the DSYAlbum objects returned from the search event that are being displayed in the tableview.
 */
@property (nonatomic,strong) NSMutableArray *albums;

/**
 An NSString representing the current query in the searchTextField.
 */
@property (nonatomic,copy) NSString *currentQuery;

/**
 The DSYInputTextField at the top of the view used to type in a search query.
 */
@property (nonatomic,weak) IBOutlet DSYInputTextField *searchTextField;

/**
 The DSYSearchViewControllerDelegate that will receive the album selection changed event.
 */
@property (nonatomic,assign) id<DSYSearchViewControllerDelegate> searchViewControllerDelegate;

@end
