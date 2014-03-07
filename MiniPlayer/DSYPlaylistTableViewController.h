//
//  DSYPlaylistTableViewController.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYTableViewController.h"

@interface DSYPlaylistTableViewController : DSYTableViewController


+(instancetype)playlistTableViewControllerWithPlaylist:(DSYPlaylist *)playlist;

/**
 The DSYPlaylist that is being used to create the view.
 */
@property (nonatomic,strong) DSYPlaylist *playlist;

/**
 An NSArray of DSYTracks that are being displayed in the table view.
 */
@property (nonatomic,strong) NSArray *tracks;

@end
