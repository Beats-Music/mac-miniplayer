//
//  DSYSearchViewController.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYSearchViewController.h"

#define SEARCH_LIMIT @(10)

@implementation DSYSearchViewController

#pragma mark - Awake From Nib
-(void)awakeFromNib
{
    [super awakeFromNib];
    
    self.searchTextField.placeholderString      = @"start typing to search...".uppercaseString;
    self.searchTextField.inputTextFieldDelegate = self;
    self.searchTextField.target                 = self;
    self.searchTextField.action                 = @selector(search:);
    
}

-(void)search:(DSYInputTextField *)searchTextField
{
    // Set the current query
    self.currentQuery = searchTextField.string;
    
    // Search albums
    [self _searchAlbumsWithQuery:self.currentQuery];
}

#pragma mark - DSYInputTextFieldDelegate
-(void)inputField:(DSYInputTextField *)inputField
      textChanged:(NSString *)string
{
    // If the user cleared the text field then don't display shit
    if( !string.length )
    {
        self.currentQuery = @"";
        [self _clearAll];
        return;
    }
    
    // Set the current query
    self.currentQuery = string;
    
    // Search albums
    [self _searchAlbumsWithQuery:self.currentQuery];
}

-(void)_clearAll
{
    [self.albums    removeAllObjects];
    [self.tableView reloadData];
}

#pragma mark - Private Searching
-(void)_searchAlbumsWithQuery:(NSString *)string
{
    // Perform the request for the information
    [[DSYAPIClient sharedAPI] searchWithQuery:string parameters:@{ @"limit" : SEARCH_LIMIT, @"type" : @"album" } finishedLoading:^{
    } success:^(id response) {
        
        if( [string isEqualToString:self.currentQuery] )
        {
        
            self.albums = [NSMutableArray array];
    
            // Create a new group
            DSYAlbum *albumGroup = [DSYAlbum MR_createEntity];
            albumGroup.isGroup = YES;
            albumGroup.title   = @"albums".uppercaseString;
            [self.albums addObject:albumGroup];
            
            // Add results
            [self.albums addObjectsFromArray:[DSYAlbum albumsWithSearchDictionaries:response[@"data"]]];
        
            // Reload data
            [self.tableView reloadData];
    
            
        }
        
    } failed:^(NSError *error, id response) {
        
        NSLog(@"failed: %@",error);
        
    }];
}

#pragma mark - NSTableViewDataSource
-(NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return self.albums.count;
}

-(NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    // Populate album view with album data
    DSYAlbum              *album        = self.albums[row];
    
    // Return group
    if( album.isGroup )
    {
        DSYGroupCellView *groupCell = [tableView makeViewWithIdentifier:@"GroupCell" owner:self];
        groupCell.titleLabel.stringValue = album.title;
        return groupCell;
    }
    
    NSString              *identifier   = [tableColumn identifier];
    DSYAlbumTableCellView *albumCell    = nil;
    
    // Match the column with the identifier we set in interface builder
    if( [identifier isEqualToString:@"AlbumCell"] )
    {
        // Create the track cell
        albumCell = [tableView makeViewWithIdentifier:@"AlbumCell" owner:self];
        
        // Populate it with the track data
        albumCell.titleLabel.stringValue        = album.title;
        albumCell.subtitleLabel.stringValue     = album.artistDisplayName;
        
        // try to load the image async
        [[DSYAPIClient sharedAPI] getAlbumArtWithAlbumId:album.id parameters:Nil finishedLoading:^{
        } success:^(id response) {
            dispatch_async(dispatch_get_main_queue(), ^{
                albumCell.mainImageView.image = response;
            });
        } failed:^(NSError *error, id response) {
            NSLog(@"failed to load image");
        }];
        
    }
    
    // Return the cell back
    return albumCell;
}

-(CGFloat)tableView:(NSTableView *)tableView heightOfRow:(NSInteger)row
{
    DSYAlbum *album = self.albums[row];
    if( album.isGroup )
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
    // Populate album view with track data
    DSYAlbum *album        = self.albums[row];
    return album.isGroup;
}

-(BOOL)tableView:(NSTableView *)tableView shouldSelectRow:(NSInteger)row
{
    // Populate album view with track data
    DSYAlbum *album        = self.albums[row];
    return !album.isGroup;
}

#pragma mark - NSTableViewDelegate
-(void)tableViewSelectionDidChange:(NSNotification *)notification
{
    NSInteger selectedRow = self.tableView.selectedRow;
    if( selectedRow > -1 && selectedRow < self.albums.count ){
        DSYAlbum *album = self.albums[selectedRow];
        if( album.isGroup )
        {
            return;
        }
        else if( self.searchViewControllerDelegate )
        {
            if( [self.searchViewControllerDelegate respondsToSelector:@selector(searchViewController:changedAlbumSelection:)] )
            {
                [self.searchViewControllerDelegate searchViewController:self changedAlbumSelection:album];
            }
        }
    }
}

@end
