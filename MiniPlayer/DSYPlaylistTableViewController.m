//
//  DSYPlaylistTableViewController.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYPlaylistTableViewController.h"

@interface DSYPlaylistTableViewController ()

@end

@implementation DSYPlaylistTableViewController

#pragma mark - Class Initializer
+(instancetype)playlistTableViewControllerWithPlaylist:(DSYPlaylist *)playlist
{
    DSYPlaylistTableViewController *playlistTableViewController = [DSYPlaylistTableViewController viewControllerWithXib];
    playlistTableViewController.playlist = playlist;
    return playlistTableViewController;
}

#pragma mark - Awake
-(void)awakeFromNib
{
    // Call suepr
    [super awakeFromNib];
    
    // -- Load all

    // Images
    [self _loadImages];
    
    // Tracks
    [self _loadTracks];
    
    // Populate metadata fields
    [self _populateMetadata];
}

#pragma mark - Loading Methods
-(void)_loadTracks
{
    // Load tracks
    [[DSYAPIClient sharedAPI] getPlaylistTracksForPlaylistId:self.playlist.id parameters:nil finishedLoading:^{
        self.hasData = YES;
    } success:^(id response) {
        
        // Import the tracks
        self.tracks = [DSYTrack tracksWithDictionaries:response[@"data"]];
        
        // Refresh the tableview
        [self.tableView reloadData];

    } failed:^(NSError *error, id response) {
        NSLog(@"failed to load tracks from playlist");
    }];
}

-(void)_loadImages
{
    // Playlist
    [[DSYAPIClient sharedAPI] getPlaylistArtWithPlaylistId:self.playlist.id parameters:@{ @"size" : @"large" } finishedLoading:^{
    } success:^(id response) {
        dispatch_async(dispatch_get_main_queue(), ^{
            self.mainImageView.image = response;
        });
    } failed:^(NSError *error, id response) {
        NSLog(@"failed to load image");
    }];
    
    // User
    [[DSYAPIClient sharedAPI] getUserArtWithUserId:[DSYUser sessionUser].id parameters:nil finishedLoading:^{
    } success:^(id response) {
        dispatch_async(dispatch_get_main_queue(), ^{
            self.secondaryImageView.image = response;
        });
    } failed:^(NSError *error, id response) {
        NSLog(@"failed to load user image: %@",error);
    }];
}

-(void)_populateMetadata
{
    
    // Uppercased playlist name
    self.titleLabel.stringValue = self.playlist.name.uppercaseString;
    
    // Create a date formatter
    NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:NSYearCalendarUnit
                                                                       fromDate:self.playlist.created_at];
    NSInteger year=[dateComponents year];
    
    // 2013 • 12 Songs • 02:34",
    self.subtitleLabel.stringValue  = [NSString stringWithFormat:
                                       @"%li • %i Songs • %@",
                                       year,
                                       self.playlist.totalTracksValue,
                                       [NSString stringWithTimeInterval:self.playlist.durationValue]];
    
    // Username of person or organization that created the playlist
    self.secondaryLabel.stringValue = [NSString stringWithFormat:
                                       @"Playlist by %@",
                                       self.playlist.userDisplayName];
}

#pragma mark - NSTableViewDataSource
-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return self.tracks.count;
}

-(NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    // Populate track view with track data
    DSYTrack              *track        = self.tracks[row];
    NSString              *identifier   = [tableColumn identifier];
    DSYTrackTableCellView *trackCell    = nil;
    
    // Match the column with the identifier we set in interface builder
    if( [identifier isEqualToString:@"TrackCell"] )
    {
        // Create the track cell
        trackCell = [tableView makeViewWithIdentifier:@"TrackCell" owner:self];
        
        // Populate it with the track data
        trackCell.titleLabel.stringValue        = track.title;
        trackCell.subtitleLabel.stringValue     = track.artistDisplayName;
        trackCell.trackNumberLabel.stringValue  = @(row+1).stringValue;
    }
    
    // Return the cell back
    return trackCell;
}

#pragma mark - NSTableViewDelegate
-(void)tableViewSelectionDidChange:(NSNotification *)notification
{
    NSInteger selectedRow = self.tableView.selectedRow;
    if( selectedRow > -1 && selectedRow < self.tracks.count ){
        DSYTrack *track = self.tracks[selectedRow];
        if( track )
        {
            // Add the current track to the queue
            [[DSYRTMPPlayerQueue sharedQueue] setQueueWithTracks:self.tracks
                                               startingWithTrack:track];
            
            // Perform playback
            [[DSYRTMPPlayer sharedPlayer] playTrack:track];
        }
    }
}

@end
