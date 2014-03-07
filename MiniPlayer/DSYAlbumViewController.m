//
//  DSYAlbumViewController.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYAlbumViewController.h"

#import "DSYAPIClient.h"

@interface DSYAlbumViewController ()

@end

@implementation DSYAlbumViewController

-(void)awakeFromNib
{
    [super awakeFromNib];
    
    self.titleLabel.textColor       = [NSColor whiteColor];
    self.subtitleLabel.textColor    = [NSColor darkGrayColor];
    self.artistLabel.textColor      = [NSColor darkGrayColor];
    
    // Reload album
    [[DSYAPIClient sharedAPI] getAlbumWithAlbumId:self.album.id parameters:nil finishedLoading:^{
        
    } success:^(id response) {
        
        // Load in fresh data
        self.album = [DSYAlbum albumWithDictionary:response[@"data"]];
        
        // Refresh info
        [self _updateWithUpdatedAlbum:self.album];
        
        // Load image
        [self _loadImage];
        
        // Load in the tracks
        [self _loadTracks];
        
    } failed:^(NSError *error, id response) {
        NSLog(@"failed to load album: %@",error);
    }];
}

#pragma mark - Loading
-(void)_loadImage
{
    [[DSYAPIClient sharedAPI] getAlbumArtWithAlbumId:self.album.id parameters:@{ @"size" : @"large" } finishedLoading:^{
    } success:^(id response) {
    
        dispatch_async(dispatch_get_main_queue(), ^{
            self.albumImageView.image = response;
        });
        
    } failed:^(NSError *error, id response) {
        NSLog(@"failed to load image :%@",error);
    }];
}

-(void)_loadTracks
{
    [[DSYAPIClient sharedAPI] getAlbumTracksWithAlbumId:self.album.id parameters:nil finishedLoading:^{
    } success:^(id response) {
        
        // Load in tracks
        self.tracks = [DSYTrack tracksWithDictionaries:response[@"data"]];
        
        // Reload tableview
        [self.tableView reloadData];
        
    } failed:^(NSError *error, id response) {
        
        NSLog(@"failed to load tracks: %@",error);
        
    }];
}

#pragma mark - Class Initializer
+(instancetype)albumViewControllerWithAlbum:(DSYAlbum *)album
{
    DSYAlbumViewController *albumViewController = [DSYAlbumViewController viewControllerWithXib];
    albumViewController.album = album;
    return albumViewController;
}

#pragma mark - Setters
-(void)_updateWithUpdatedAlbum:(DSYAlbum *)album
{
    int16_t numberOfTracks = album.totalTracksValue;
    int32_t totalDuration  = album.durationValue;
    NSString *formattedDuration = [self stringFromTimeInterval:(NSTimeInterval)totalDuration];
    NSDate *releaseDate = album.releaseDate;
    
    // Create a date formatter
    NSDateComponents *dateComponents = [[NSCalendar currentCalendar] components:NSYearCalendarUnit fromDate:releaseDate];
    NSInteger year=[dateComponents year];
    
    self.titleLabel.stringValue     = _album.title.uppercaseString;
    self.subtitleLabel.stringValue  = [NSString stringWithFormat:@"%li • %i Songs • %@",year,numberOfTracks,formattedDuration];
    self.artistLabel.stringValue    = [NSString stringWithFormat:@"Album by %@",album.artistDisplayName];
}

-(void)setArtistImage:(NSImage *)artistImage
{
    _artistImage            = artistImage;
    _artistImageView.image  = _artistImage;
}

-(void)setTracks:(NSArray *)tracks
{
    _tracks = tracks;
    [self.tableView reloadData];
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
        trackCell.trackNumberLabel.stringValue  = track.trackPosition.stringValue;
    }
    
    // Return the cell back
    return trackCell;
}

#pragma mark - NSTableViewDelegate

-(void)tableViewSelectionDidChange:(NSNotification *)notification
{
    NSInteger selectedRow = self.tableView.selectedRow;
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

#pragma mark - Events
-(void)redraw
{
    [self.view setNeedsDisplay:YES];
}

#pragma mark - Utilities
- (NSString *)stringFromTimeInterval:(NSTimeInterval)interval {
    NSInteger ti = (NSInteger)interval;
    NSInteger seconds = ti % 60;
    NSInteger minutes = (ti / 60) % 60;
    return [NSString stringWithFormat:@"%02li:%02li", (long)minutes, (long)seconds];
}

@end
