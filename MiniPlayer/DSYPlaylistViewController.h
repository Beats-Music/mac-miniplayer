//
//  DSYPlaylistViewController.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYTableViewController.h"
@class DSYPlaylistViewController;

@protocol DSYPlaylistViewControllerDelegate <NSObject>

@required
-(void)playlistViewController:(DSYPlaylistViewController *)playlistViewController
     changedPlaylistSelection:(DSYPlaylist *)playlist;

@end

@interface DSYPlaylistViewController : DSYTableViewController

@property (nonatomic,assign) id<DSYPlaylistViewControllerDelegate> playlistViewControllerDelegate;

/**
 An NSArray representing the playlists for the given user.
 */
@property (nonatomic,strong) NSMutableArray *playlists;

@end
