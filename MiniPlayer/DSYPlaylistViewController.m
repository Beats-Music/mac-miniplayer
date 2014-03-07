//
//  DSYPlaylistViewController.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYPlaylistViewController.h"

#import "DSYGroupCellView.h"
#import "DSYPlaylistCellView.h"
#import "DSYTableRowView.h"

@implementation DSYPlaylistViewController

#pragma mark - Awake
-(void)awakeFromNib
{
    // awake
    [super awakeFromNib];
    
    // load playlists
    [self reloadPlaylists];
}

-(void)reloadPlaylists
{
    [[DSYAPIClient sharedAPI] getPlaylistsForUserId:[DSYUser sessionUser].id parameters:nil finishedLoading:^{
        self.hasData = YES;
    } success:^(id response) {
        
        // Get the playlists
        self.playlists = [NSMutableArray array];
        
        // Create group
        DSYPlaylist *myPlaylistsGroup   = [DSYPlaylist MR_createEntity];
        myPlaylistsGroup.isGroup        = YES;
        myPlaylistsGroup.name           = @"my playlists".uppercaseString;

        [self.playlists addObject:myPlaylistsGroup];
        [self.playlists addObjectsFromArray:[DSYPlaylist playlistsWithDictionaries:response[@"data"]]];
        
        [self.tableView reloadData];
        
    } failed:^(NSError *error, id response) {
        NSLog(@"failed: %@",error);
    }];
}

#pragma mark - NSTableViewDataSource
-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return self.playlists.count;
}

-(NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    // Populate track view with track data
    DSYPlaylist           *playlist     = self.playlists[row];
    NSString              *identifier   = [tableColumn identifier];
    DSYPlaylistCellView   *playlistCell = nil;
    
    if( [playlist isGroup] )
    {
        DSYGroupCellView *groupCell = [tableView makeViewWithIdentifier:@"GroupCell" owner:self];
        groupCell.titleLabel.stringValue = playlist.name;
        return groupCell;
    }
    // Match the column with the identifier we set in interface builder
    else if( [identifier isEqualToString:@"PlaylistCell"] )
    {
        // Create the track cell
        playlistCell = [tableView makeViewWithIdentifier:@"PlaylistCell" owner:self];
        
        // Populate it with the track data
        playlistCell.titleLabel.stringValue        = playlist.name;

        NSString *songLabel = playlist.totalTracksValue == 1 ? @"Song" : @"Songs";
        playlistCell.subtitleLabel.stringValue     = [NSString stringWithFormat:@"%@ • %@ %@ • %@",playlist.userDisplayName,playlist.totalTracks,songLabel,[NSString stringWithTimeIntervel:playlist.durationValue]];
        
        // try to load the image async
        [[DSYAPIClient sharedAPI] getPlaylistArtWithPlaylistId:playlist.id parameters:Nil finishedLoading:^{
        } success:^(id response) {
            dispatch_async(dispatch_get_main_queue(), ^{
                playlistCell.mainImageView.image = response;
            });
        } failed:^(NSError *error, id response) {
            NSLog(@"failed to load image");
        }];
    }
    
    // Return the cell back
    return playlistCell;
}

-(CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row
{
    DSYPlaylist *playlist = self.playlists[row];
    if( playlist.isGroup )
    {
        return 50.0f;
    }
    else
    {
        return 85.0f;
    }
}

-(BOOL)tableView:(NSTableView *)tableView isGroupRow:(NSInteger)row
{
    DSYPlaylist *playlist = self.playlists[row];
    return playlist.isGroup;
}

-(BOOL)tableView:(NSTableView *)tableView shouldSelectRow:(NSInteger)row
{
    DSYPlaylist *playlist = self.playlists[row];
    return !playlist.isGroup;
}

#pragma mark - NSTableViewDelegate
-(NSTableRowView *)tableView:(NSTableView *)tableView rowViewForRow:(NSInteger)row
{
    DSYTableRowView *rowView = [[DSYTableRowView alloc] initWithFrame:NSMakeRect(0, 0, tableView.frame.size.width, 50)];
    return rowView;
}

-(void)tableViewSelectionDidChange:(NSNotification *)notification
{
    NSInteger selectedRow = self.tableView.selectedRow;
    if( selectedRow > -1 && selectedRow < self.playlists.count ){
        DSYPlaylist *playlist = self.playlists[selectedRow];
        if( playlist.isGroup )
        {
            return;
        }
        else if( self.playlistViewControllerDelegate )
        {
            if( [self.playlistViewControllerDelegate respondsToSelector:@selector(playlistViewController:changedPlaylistSelection:)] )
            {
                [self.playlistViewControllerDelegate playlistViewController:self
                                                   changedPlaylistSelection:playlist];
            }
        }
    }
}

@end
