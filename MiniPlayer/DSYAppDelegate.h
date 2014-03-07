//
//  DSYAppDelegate.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/1/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import "DSYView.h"
#import "DSYImageView.h"
#import "DSYSliderView.h"
#import "DSYSliderKnobView.h"

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

#import "DSYSignInWindowController.h"

@interface DSYAppDelegate : NSObject <NSApplicationDelegate,DSYSignInWindowControllerDelegate,DSYViewDelegate>

@property (nonatomic,copy) NSString *fullScreenMenuItemTitle;
@property (nonatomic,assign) BOOL hasUser;
@property (assign) IBOutlet NSWindow *window;

#pragma mark - Sign In Window
@property (nonatomic,strong) DSYSignInWindowController *signInWindowController;

#pragma mark - View Controllers
@property (nonatomic,weak) IBOutlet DSYSliderView     *sliderView;
@property (nonatomic,weak) IBOutlet DSYSliderKnobView *sliderKnobView;
@property (nonatomic,weak) IBOutlet DSYImageView      *imageView;

#pragma mark - Content Views
@property (nonatomic,weak) IBOutlet NSView  *nonFullScreenView;
@property (nonatomic,weak) IBOutlet DSYView *contentView;
@property (nonatomic,weak) IBOutlet DSYView *controlsContainerView;
@property (nonatomic,weak) IBOutlet DSYView *navigationButtonsView;

#pragma mark - View Controllers
@property (nonatomic,assign) DSYViewController *currentViewController;
@property (nonatomic,strong) DSYAlbumViewController *albumViewController;
@property (nonatomic,strong) DSYPlaylistViewController *playlistsViewController;
@property (nonatomic,strong) DSYPlaylistTableViewController *playlistTableViewController;
@property (nonatomic,strong) DSYSearchViewController *searchViewController;

#pragma mark - Static View Controllers
@property (nonatomic,strong) DSYButtonsViewController           *buttonsViewController;
@property (nonatomic,strong) DSYFullScreenViewController        *fullScreenViewController;
@property (nonatomic,strong) DSYNavigationButtonsViewController *navigationButtonsViewController;
@property (nonatomic,strong) DSYNowPlayingViewController        *nowPlayingViewController;

@end
