//
//  DSYPlaylistViewController.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYTableViewController.h"
@class DSYPlaylistViewController;

/**
 The DSYPlaylistViewControllerDelegate, which conforms to the NSObject protocol, provides a receiver for the DSYPlaylistViewController to notify if a particular playlist was selected.
 */
@protocol DSYPlaylistViewControllerDelegate <NSObject>

@required

#pragma mark - Playlist Selection Changed
///-----------------------------------------------------------
/// @name Playlist Selection Changed
///-----------------------------------------------------------

/**
 Notifies the DSYPlaylistViewControllerDelegate of a new playlist selection on the DSYPlaylistViewController.
 @param playlistViewController The DSYPlaylistViewController that triggered the event.
 @param playlist               The DSYPlaylist that was selected.
 */
-(void)playlistViewController:(DSYPlaylistViewController *)playlistViewController
     changedPlaylistSelection:(DSYPlaylist *)playlist;

@end

/**
 The DSYPlaylistViewController, a subclass of the DSYTableViewController, provides a view controller to display an array of DSYPlaylist objects. When a particular DSYPlaylist is chosen from the tableview it triggers the `playlistViewController:changedPlaylistSelection:` on its DSYPlaylistViewControllerDelegate.
 */
@interface DSYPlaylistViewController : DSYTableViewController

#pragma mark - Properties
///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------

/**
 The DSYPlaylistViewControllerDelegate that will receive the playlist selection changed event.
 */
@property (nonatomic,assign) id<DSYPlaylistViewControllerDelegate> playlistViewControllerDelegate;

/**
 An NSArray representing the playlists for the given user.
 */
@property (nonatomic,strong) NSMutableArray *playlists;

@end
