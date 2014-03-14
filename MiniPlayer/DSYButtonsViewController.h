//
//  DSYButtonsViewController.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/2/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYViewController.h"
@class DSYButton;

/**
 The DSYButtonsViewController, a subclass of the DSYViewController, provides a view controller to handle the play, pause, previous, and next playback toggles on the bottom of the application when the bottom bar is hovered over. The view controller listens for the kDSYRTMPPlayerNotificationDidStartPlayback and kDSYRTMPPlayerNotificationDidStopPlayback notifications and updates the playButton accordingly.
 */
@interface DSYButtonsViewController : DSYViewController

#pragma mark - Properties
///-----------------------------------------------------------
/// @name Properties
///-----------------------------------------------------------

/**
 The DSYButton that is used to toggle play/pause state.
 */
@property (nonatomic,weak) IBOutlet DSYButton *playButton;

/**
 The DSYButton that is used for `previousTrack:` events.
 */
@property (nonatomic,weak) IBOutlet DSYButton *backButton;

/**
 The DSYButton that is used for `nextTrack:` events.
 */
@property (nonatomic,weak) IBOutlet DSYButton *forwardButton;

/**
 The DSYButton that is used to display more options.
 */
@property (nonatomic,weak) IBOutlet DSYButton *showMoreButton;

#pragma mark - Events
///-----------------------------------------------------------
/// @name Events
///-----------------------------------------------------------

/**
 Triggers a play/pause event on the shared instance of the DSYRTMPPlayer.
 @param sender The object (id) that triggered the event. Typically a subclass of NSButton.
 */
-(IBAction)togglePlay:(id)sender;

/**
 Pulls the previous track in queue in the shared instance of the DSYRTMPPlayerQueue and provides it to the shared instance of the DSYRTMPPlayer for playback.
 @param sender The object (id) that triggered the event. Typically a subclass of NSButton.
 */
-(IBAction)previousTrack:(id)sender;

/**
 Pulls the next track in queue in the shared instance of the DSYRTMPPlayerQueue and provides it to the shared instance of the DSYRTMPPlayer for playback.
 @param sender The object (id) that triggered the event. Typically a subclass of NSButton.
 */
-(IBAction)nextTrack:(id)sender;

@end
