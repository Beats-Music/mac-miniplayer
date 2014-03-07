//
//  DSYNavigationButtonsViewController.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/5/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYNavigationButtonsViewController.h"

#import "DSYRadioButton.h"

@implementation DSYNavigationButtonsViewController

#pragma mark - Initialization
-(void)initializeViewController
{
    // Register Notifications
    [self _registerNotifications];
}

#pragma mark - Awake
-(void)awakeFromNib
{
    switch (_selection)
    {
        case DSYNavigationBarSelectionPlaylist:
            self.playlistsButton.buttonOnOffState = DSYButtonOnOffStateOn;
            break;
        case DSYNavigationBarSelectionSearch:
            self.searchButton.buttonOnOffState = DSYButtonOnOffStateOn;
            break;
        default:
            break;
    }
}

#pragma mark - Register Notifications
-(void)_registerNotifications
{
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(_navigatedToSubpage:)
                                                 name:kDSYGeneralNotificationNavigatedToSubpage
                                               object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(_windowResized:)
                                                 name:NSWindowDidResizeNotification
                                               object:nil];
}

#pragma mark - Notifications
-(void)_navigatedToSubpage:(NSNotification *)notification
{
    [self _deselectAll];
}

-(void)_windowResized:(NSNotification *)notification
{
    [self.playlistsButton   setNeedsDisplay:YES];
    [self.searchButton      setNeedsDisplay:YES];
}

#pragma mark - Selection
-(void)_deselectAll
{
    self.playlistsButton.buttonOnOffState = DSYButtonOnOffStateOff;
    self.searchButton.buttonOnOffState    = DSYButtonOnOffStateOff;
}

#pragma mark - Events
-(void)changedSelectionToPlaylist:(id)sender
{
    // change selection to playlist
    _selection = DSYNavigationBarSelectionPlaylist;
    
    // update button state
    [self _updateButtonsForSelection:_selection];
    
    // notify receiver of new playlist selection
    [self _notifySelection];
}

-(void)changedSelectionToSearch:(id)sender
{
    // changed selection to search
    _selection = DSYNavigationBarSelectionSearch;
    
    // update button state
    [self _updateButtonsForSelection:_selection];
    
    // notify receiver of new search selection
    [self _notifySelection];
}

-(void)_notifySelection
{
    // Notify delegate
    if( self.navigationButtonsViewControllerDelegate )
    {
        if( [self.navigationButtonsViewControllerDelegate respondsToSelector:@selector(navigationViewController:changedSelection:)] )
        {
            [self.navigationButtonsViewControllerDelegate navigationViewController:self
                                                                  changedSelection:self.selection];
        }
    }
}

-(void)_updateButtonsForSelection:(DSYNavigationBarSelection)selection
{
    switch (selection)
    {
        case DSYNavigationBarSelectionPlaylist:
            self.searchButton.buttonOnOffState = DSYButtonOnOffStateOff;
            break;
        case DSYNavigationBarSelectionSearch:
            self.playlistsButton.buttonOnOffState = DSYButtonOnOffStateOff;
            break;
        default:
            break;
    }
}

#pragma mark - Cleanup
-(void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:kDSYGeneralNotificationNavigatedToSubpage
                                                  object:nil];
    [[NSNotificationCenter defaultCenter] removeObserver:self
                                                    name:NSWindowDidResizeNotification
                                                  object:nil];
}

@end
