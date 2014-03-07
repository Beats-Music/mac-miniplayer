//
//  DSYAppDelegate.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/1/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYAppDelegate.h"

#import "DSYAPIClient.h"

@interface DSYAppDelegate () <DSYPlaylistViewControllerDelegate,DSYNavigationButtonsViewControllerDelegate,DSYSearchViewControllerDelegate>

@end

@implementation DSYAppDelegate

#pragma mark - NSApplication Notifications
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    
    // Checks for valid client id, client secret, and redirect uri keys in keys.plist file
    [self _checkForValidKeys];
    
    // Setup Core Data
    [MagicalRecord setupAutoMigratingCoreDataStack];
    
    // Create the sign in window controller and display
    self.signInWindowController = [DSYSignInWindowController signInWindowControllerWithDelegate:self];
    [self.signInWindowController.window orderFront:self];
}

-(void)applicationWillTerminate:(NSNotification *)notification
{
    // Teardown Core Data
    [MagicalRecord cleanUp];
}

#pragma mark - Validation
-(void)_checkForValidKeys
{
    // Attempt to load in the API keys, exit app if it fails and leave a friendly message
    NSString *keysPath = [[NSBundle mainBundle] pathForResource:@"keys" ofType:@"plist"];
    if( !keysPath )
    {
        // failed no plist
        NSLog(@"keys.plist was not found! This file contains the keys for your application's CLIENT_ID, CLIENT_SECRET, and REDIRECT_URI strings. Add the keys.plist file to the app bundle and add the relevant keys to use this example application.");
        [[NSApplication sharedApplication] terminate:self];
    }
    NSDictionary *keysDictionary = [[NSDictionary alloc] initWithContentsOfFile:keysPath];
    if( !keysDictionary )
    {
        // failed not valid plist
        NSLog(@"keys.plist was not able to be parsed! This file contains the keys for your application's CLIENT_ID, CLIENT_SECRET, and REDIRECT_URI strings, please verify they are filled in correctly. The proper format would be providing the string for your CLIENT_ID key (formatted something like asdfg3q67f885p12zqwgwkge), a string for your CLIENT_SECRET key (formatted something like Xt8fWtVBasdHJGn1jXGrFa2Q), and a string for your REDIRECT_URI (formatted like http://www.beatsmusic.com).");
        [[NSApplication sharedApplication] terminate:self];
    }
    NSString *clientId      = keysDictionary[@"CLIENT_ID"];
    if( !clientId || !clientId.length )
    {
        // failed no client id
        NSLog(@"The keys.plist file containing the keys for your application's CLIENT_ID, CLIENT_SECRET, and REDIRECT_URI strings did not contain a proper CLIENT_ID key. The proper format would be providing the string for your CLIENT_ID key (formatted something like asdfg3q67f885p12zqwgwkge).");
        [[NSApplication sharedApplication] terminate:self];
    }
    NSString *clientSecret  = keysDictionary[@"CLIENT_SECRET"];
    if( !clientSecret || !clientSecret.length )
    {
        // failed no client secret
        NSLog(@"The keys.plist file containing the keys for your application's CLIENT_ID, CLIENT_SECRET, and REDIRECT_URI strings did not contain a proper CLIENT_SECRET key. The proper format would be providing the string for your CLIENT_SECRET key (formatted something like Xt8fWtVBasdHJGn1jXGrFa2Q).");
        [[NSApplication sharedApplication] terminate:self];
    }
    NSString *redirectURI = keysDictionary[@"REDIRECT_URI"];
    if( !redirectURI || !redirectURI.length )
    {
        // failed no redirect uri
        NSLog(@"The keys.plist file containing the keys for your application's CLIENT_ID, CLIENT_SECRET, and REDIRECT_URI strings did not contain a proper REDIRECT_URI key. The proper format would be providing the string for your REDIRECT_URI key (formatted something like http://www.beatsmusic.com).");
    }
    // Set on API
    [DSYAPIClient sharedAPI].clientId       = clientId;
    [DSYAPIClient sharedAPI].clientSecret   = clientSecret;
    [DSYAPIClient sharedAPI].redirectURI    = redirectURI;
}

#pragma mark - DSYSignInWindowControllerDelegate
-(void)windowController:(DSYSignInWindowController *)windowController
               gotToken:(NSString *)token
{
    // Close the sign in window controller
    [self.signInWindowController close];
    
    // Set the data on the api
    DSYAPIClient *api   = [DSYAPIClient sharedAPI];
    api.accessToken     = token;
    
    // Load in the client window
    [self.window makeKeyAndOrderFront:self];

    
    // Get user info
    [[DSYAPIClient sharedAPI] getTokenDataWithParameters:nil finishedLoading:^{
    } success:^(id response) {
        
        // Import user and set for session
        DSYUser *user = [DSYUser userFromTokenDictionary:response[@"result"]];
        [DSYUser setSessionUser:user];
        
        self.hasUser = YES;
       
        // Finish loading the rest
        dispatch_async(dispatch_get_main_queue(), ^{
            
            // Setup the main window's components
            [self _initializeView];
            
            // Setup the static elements on the page
            [self _initializeControlsView];
            
            // Setup pages
            [self _initializeViewControllers];
            
            // Register notifications
            [self _registerNotifications];
            
        });
        
    } failed:^(NSError *error, id response) {
        // Failed
    }];

}

#pragma mark - Initialize Controls
-(void)_initializeView
{
    // Now able to enter full screen
    self.fullScreenMenuItemTitle = @"Enter Full Screen";
}

-(void)_initializeControlsView
{
    // Setup slider
    self.sliderView.sliderKnobView = self.sliderKnobView;
    
    // Listen for hover events
    self.controlsContainerView.viewDelegate = self;
    
    // Create the navigation, now playing, and buttons view controllers
    self.navigationButtonsViewController    = [DSYNavigationButtonsViewController viewControllerWithXib];
    self.nowPlayingViewController           = [DSYNowPlayingViewController viewControllerWithXib];
    self.buttonsViewController              = [DSYButtonsViewController viewControllerWithXib];
    
    // Add the navigation buttons group to the navigation button container
    self.navigationButtonsViewController.navigationButtonsViewControllerDelegate = self;
    [self.navigationButtonsView addSubviewFromViewController:self.navigationButtonsViewController];
    
    // Add the now playing view as the current displayed view
    [self.controlsContainerView addSubviewFromViewController:self.nowPlayingViewController];
}

#pragma mark - Initialize View Controllers
-(void)_initializeViewControllers
{
    
    // Playlists View Controller
    self.playlistsViewController = [DSYPlaylistViewController viewControllerWithXib];
    self.playlistsViewController.playlistViewControllerDelegate = self;
    
    // Search View Controller
    self.searchViewController = [DSYSearchViewController viewControllerWithXib];
    self.searchViewController.searchViewControllerDelegate = self;
    
    // Full Screen View Controller
    self.fullScreenViewController = [DSYFullScreenViewController viewControllerWithXib];
    [self.fullScreenViewController.view setHidden:YES];
    [self.window.contentView addSubviewFromViewController:self.fullScreenViewController];
    
    // Change selection to playlist
    [self.navigationButtonsViewController changedSelectionToPlaylist:self];
    
}

#pragma mark - Register Notifications
-(void)_registerNotifications
{
    // Audio Player
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(_updatePlayPosition:)
                                                 name:kDSYRTMPPlayerNotificationUpdatedPosition
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(_reachedEOF:)
                                                 name:kDSYRTMPPlayerNotificationReachedEndOfFile
                                               object:nil];
    
    // Full Screen
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(windowWillBecomeFullScreen:)
                                                 name:NSWindowWillEnterFullScreenNotification
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(windowWillEndFullScreen:)
                                                 name:NSWindowWillExitFullScreenNotification
                                               object:nil];
    
}

#pragma mark - Playback Notifications
-(void)_reachedEOF:(NSNotification *)notification
{
    NSLog(@"EOF");
}

-(void)_updatePlayPosition:(NSNotification *)notification
{
    self.sliderView.progress = [DSYRTMPPlayer sharedPlayer].progress;
}

#pragma mark - Full Screen Notifications
-(void)windowWillBecomeFullScreen:(NSNotification *)notification
{
    self.fullScreenMenuItemTitle = @"Exit Full Screen";
    [self.window setMaxSize:NSMakeSize(4000, 4000)];
    [self.nonFullScreenView setHidden:YES];
    [self.fullScreenViewController.view setHidden:NO];
}

-(void)windowWillEndFullScreen:(NSNotification *)notification
{
    self.fullScreenMenuItemTitle = @"Enter Full Screen";
    [self.window setMaxSize:NSMakeSize(450, 4000)];
    [self.nonFullScreenView setHidden:NO];
    [self.fullScreenViewController.view setHidden:YES];
}

#pragma mark - DSYViewDelegate
-(void)viewDidReceiveMouseEnter:(DSYView *)view
{
    [self.nowPlayingViewController.view removeFromSuperview];
    [self.controlsContainerView addSubviewFromViewController:self.buttonsViewController];
}

-(void)viewDidReceiveMouseExit:(DSYView *)view
{
    [self.buttonsViewController.view removeFromSuperview];
    [self.controlsContainerView addSubviewFromViewController:self.nowPlayingViewController];
}

#pragma mark - DSYPlaylistViewControllerDelegate
-(void)playlistViewController:(DSYPlaylistViewController *)playlistViewController
     changedPlaylistSelection:(DSYPlaylist *)playlist
{
    // Remove whatever is currently displayed in the content section
    [self.currentViewController.view removeFromSuperview];
    
    // Load in playlist table view controller
    self.playlistTableViewController = [DSYPlaylistTableViewController playlistTableViewControllerWithPlaylist:playlist];
    self.currentViewController = self.playlistTableViewController;
    [self.contentView addSubviewFromViewController:self.currentViewController];
    
    [self.sliderView setHidden:YES];
    [self.sliderKnobView setHidden:YES];
    
    [self.sliderView setHidden:NO];
    [self.sliderKnobView setHidden:NO];
    
    // Navigating to a subpage (navigation bar will unselect)
    [[NSNotificationCenter defaultCenter] postNotificationName:kDSYGeneralNotificationNavigatedToSubpage
                                                        object:nil];
}

#pragma mark - DSYNavigationButtonsViewControllerDelegate
-(void)navigationViewController:(DSYNavigationButtonsViewController *)viewController
               changedSelection:(DSYNavigationBarSelection)selection
{
    switch (selection)
    {
        case DSYNavigationBarSelectionPlaylist:
            [self _transitionToPlaylists];
            break;
        case DSYNavigationBarSelectionSearch:
            [self _transitionToSearch];
            break;
        default:
            break;
    }
}

#pragma mark - DSYSearchViewControllerDelegate
-(void)searchViewController:(DSYSearchViewController *)searchViewController changedAlbumSelection:(DSYAlbum *)album
{
    // Remove whatever is currently displayed in content section
    [self.currentViewController.view removeFromSuperview];
    
    // Load in album controller
    self.albumViewController = [DSYAlbumViewController albumViewControllerWithAlbum:album];
    self.currentViewController = self.albumViewController;
    [self.contentView addSubviewFromViewController:self.currentViewController];
    
    // Navigating to a subpage (navigation bar will unselect)
    [[NSNotificationCenter defaultCenter] postNotificationName:kDSYGeneralNotificationNavigatedToSubpage
                                                        object:nil];
}

#pragma mark - View Switching
-(void)_transitionToPlaylists
{
    // Remove whatever is currently displayed in content section
    [self.currentViewController.view removeFromSuperview];
    
    // Load in playlists
    self.currentViewController = self.playlistsViewController;
    [self.contentView addSubviewFromViewController:self.currentViewController];
}

-(void)_transitionToSearch
{
    // Remove whatever is currently displayed in content section
    [self.currentViewController.view removeFromSuperview];
    
    // Load in search
    self.currentViewController = self.searchViewController;
    [self.contentView addSubviewFromViewController:self.currentViewController];
}

#pragma mark - Cleanup
-(void)dealloc
{
    // Audio Player
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:kDSYRTMPPlayerNotificationReachedEndOfFile
                                                  object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:kDSYRTMPPlayerNotificationUpdatedPosition
                                                  object:nil];
    
    // Full Screen
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:NSWindowWillEnterFullScreenNotification
                                                  object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:NSWindowWillExitFullScreenNotification
                                                  object:nil];
}

@end
