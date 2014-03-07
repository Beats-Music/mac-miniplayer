//
//  DSYSignInWindowController.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/4/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <WebKit/WebKit.h>
@class DSYSignInWindowController;

/**
 The DSYSignInWindowControllerDelegate, which conforms to the NSObject protocol, provides a delegate for the DSYSignInWindowController to receive an auth token upon a successful login.
 */
@protocol DSYSignInWindowControllerDelegate <NSObject>

@required
/**
 Notifies a receiver of a successful login by providing the auth token as an NSString.
 @param windowController The DSYSignInWindowController that triggered the event.
 @param token            An NSString representing the auth token accessed using the oAuth 2.0 protocol
 */
-(void)windowController:(DSYSignInWindowController *)windowController
               gotToken:(NSString *)token;

@end

/**
 The DSYSignInWindowController, a subclass of NSWindowController, provides a window controller to load in a webview and take a user through the oAuth 2.0 process. Upon a successful login, the auth token will be pulled and pass to the DSYSignInWindowControllerDelegate.
 */
@interface DSYSignInWindowController : NSWindowController

/**
 Provides a class initializer for the DSYSignInWindowController using a specified delegate to receive the auth token callback.
 @param signInWindowControllerDelegate The DSYSignInWindowControllerDelegate to receive the auth token upon success.
 @return A DSYSignInWindowController instance initialized with the xib file from the same name and assigned the provided DSYSignInWindowControllerDelegate.
 */
+(instancetype)signInWindowControllerWithDelegate:(id<DSYSignInWindowControllerDelegate>)signInWindowControllerDelegate;

/**
 The DSYSignInWindowControllerDelegate that will receive the auth token upon successful login.
 */
@property (nonatomic,assign) id<DSYSignInWindowControllerDelegate> signInWindowControllerDelegate;

/**
 The WebView that is being used to navigate the oAuth flow.
 */
@property (nonatomic,weak) IBOutlet WebView *webView;

@end
