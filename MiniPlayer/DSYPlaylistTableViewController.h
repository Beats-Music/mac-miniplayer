//
//  DSYPlaylistTableViewController.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYTableViewController.h"

/**
 The DSYPlaylistTableViewController, a subclass of the DSYTableViewController, provides a view controller that displays a playlist, its cover image, its metadata (artist, duration, number of tracks), and its tracks in a tableview. 
 */
@interface DSYPlaylistTableViewController : DSYTableViewController

#pragma mark - Class Initializer
///-----------------------------------------------------------
/// @name Class Initializer
///-----------------------------------------------------------

/**
 Creates a new instance of the DSYPlaylistTableViewController with a DSYPlaylist to use to populate the view controller's metadata fields.
 @param playlist A DSYPlaylist to use for populating the metadata labels for the DSYPlaylistTableViewController.
 @return A newly created instance of the DSYPlaylistTableViewController initialized with the input DSYPlaylist.
 */
+(instancetype)playlistTableViewControllerWithPlaylist:(DSYPlaylist *)playlist;

#pragma mark - Properties
///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------

/**
 The DSYPlaylist that is being used to create the view.
 */
@property (nonatomic,strong) DSYPlaylist *playlist;

/**
 An NSArray of DSYTracks that are being displayed in the table view.
 */
@property (nonatomic,strong) NSArray *tracks;

@end
