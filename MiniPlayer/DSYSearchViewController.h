//
//  DSYSearchViewController.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYTableViewController.h"
@class DSYSearchViewController;

@protocol DSYSearchViewControllerDelegate <NSObject>

@required
-(void)searchViewController:(DSYSearchViewController *)searchViewController
      changedAlbumSelection:(DSYAlbum *)album;

@end

@interface DSYSearchViewController : DSYTableViewController <DSYInputTextFieldDelegate>

@property (nonatomic,strong) NSMutableArray *albums;

@property (nonatomic,copy) NSString *currentQuery;

@property (nonatomic,weak) IBOutlet DSYInputTextField *searchTextField;

@property (nonatomic,assign) id<DSYSearchViewControllerDelegate> searchViewControllerDelegate;

@end
