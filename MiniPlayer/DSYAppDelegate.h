//
//  DSYAppDelegate.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/1/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "DSYView.h"
#import "DSYSliderView.h"

// Dynamic
#import "DSYAlbumViewController.h"
#import "DSYPlaylistViewController.h"
#import "DSYPlaylistTableViewController.h"
#import "DSYSearchViewController.h"

// Static
#import "DSYButtonsViewController.h"
#import "DSYFullScreenViewController.h"
#import "DSYNavigationButtonsViewController.h"
#import "DSYNowPlayingViewController.h"

// Windows
#import "DSYSignInWindowController.h"

/**
 <#Description#>
 */
@interface DSYAppDelegate : NSObject <NSApplicationDelegate,DSYSignInWindowControllerDelegate,DSYViewDelegate>

#pragma mark - Properties
///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------

/**
 <#Description#>
 */
@property (nonatomic,copy) NSString *fullScreenMenuItemTitle;

/**
 <#Description#>
 */
@property (nonatomic,assign) BOOL hasUser;

/**
 <#Description#>
 */
@property (assign) IBOutlet NSWindow *window;

#pragma mark - Sign In Window
///-----------------------------------------------------------
/// @name Sign In Window
///-----------------------------------------------------------

/**
 <#Description#>
 */
@property (nonatomic,strong) DSYSignInWindowController *signInWindowController;

#pragma mark - Audio Player Controls
///-----------------------------------------------------------
/// @name Audio Player Controls
///-----------------------------------------------------------

/**
 <#Description#>
 */
@property (nonatomic,weak) IBOutlet DSYSliderView *sliderView;

#pragma mark - Content Views
///-----------------------------------------------------------
/// @name Content Views
///-----------------------------------------------------------

/**
 <#Description#>
 */
@property (nonatomic,weak) IBOutlet NSView  *nonFullScreenView;

/**
 <#Description#>
 */
@property (nonatomic,weak) IBOutlet DSYView *contentView;

/**
 <#Description#>
 */
@property (nonatomic,weak) IBOutlet DSYView *controlsContainerView;

/**
 <#Description#>
 */
@property (nonatomic,weak) IBOutlet DSYView *navigationButtonsView;

#pragma mark - Content View Controllers
///-----------------------------------------------------------
/// @name Content View Controllers
///-----------------------------------------------------------

/**
 <#Description#>
 */
@property (nonatomic,assign) DSYViewController *currentViewController;

/**
 <#Description#>
 */
@property (nonatomic,strong) DSYAlbumViewController *albumViewController;

/**
 <#Description#>
 */
@property (nonatomic,strong) DSYPlaylistViewController *playlistsViewController;

/**
 <#Description#>
 */
@property (nonatomic,strong) DSYPlaylistTableViewController *playlistTableViewController;

/**
 <#Description#>
 */
@property (nonatomic,strong) DSYSearchViewController *searchViewController;

#pragma mark - Static View Controllers
///-----------------------------------------------------------
/// @name Static View Controllers
///-----------------------------------------------------------

/**
 <#Description#>
 */
@property (nonatomic,strong) DSYButtonsViewController *buttonsViewController;

/**
 <#Description#>
 */
@property (nonatomic,strong) DSYFullScreenViewController *fullScreenViewController;

/**
 <#Description#>
 */
@property (nonatomic,strong) DSYNavigationButtonsViewController *navigationButtonsViewController;

/**
 <#Description#>
 */
@property (nonatomic,strong) DSYNowPlayingViewController *nowPlayingViewController;

@end
