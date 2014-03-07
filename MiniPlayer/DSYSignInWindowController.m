//
//  DSYSignInWindowController.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/4/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYSignInWindowController.h"
#import "DSYAPIClient.h"

@implementation DSYSignInWindowController

#pragma mark - Initialization
-(id)init
{
    self = [super initWithWindowNibName:NSStringFromClass(self.class)];
    if( self )
    {
    }
    return self;
}

#pragma mark - Class Initialization
+(instancetype)signInWindowControllerWithDelegate:(id<DSYSignInWindowControllerDelegate>)signInWindowControllerDelegate
{
    DSYSignInWindowController *signInWindowController = [[DSYSignInWindowController alloc] init];
    signInWindowController.signInWindowControllerDelegate = signInWindowControllerDelegate;
    return signInWindowController;
}

#pragma mark - Window Loaded
- (void)windowDidLoad
{
    [super windowDidLoad];
    
    // Get the frame delegate
    self.webView.frameLoadDelegate = self;
    
    // Load in the auth url for the oAuth 2.0 flow
    [self.webView.mainFrame loadRequest:[NSURLRequest requestWithURL:[self authURL]]];
}

#pragma mark - WebView Redirection
-(void)webView:(WebView *)sender didFinishLoadForFrame:(WebFrame *)frame
{
    NSURL        *url               = [NSURL URLWithString:[self currentURL]];
    NSDictionary *queryComponents   = url.queryComponents;
    NSString     *accessToken       = queryComponents[@"access_token"];
    
    if( accessToken )
    {
        // Stop the webview from loading
        self.webView.frameLoadDelegate = nil;
        [self.webView stopLoading:self];
        
        // Notify delegate of successful auth token fetch
        if( self.signInWindowControllerDelegate )
        {
            if( [self.signInWindowControllerDelegate respondsToSelector:@selector(windowController:gotToken:)] )
            {
                [self.signInWindowControllerDelegate windowController:self gotToken:accessToken];
            }
        }
    }
}

#pragma mark - Utilties
-(NSString *)currentURL
{
    return self.webView.mainFrameURL;
}

-(NSURL *)authURL
{
    return [NSURL URLWithString:[NSString stringWithFormat:
                                 @"https://partner.api.beatsmusic.com/oauth2/authorize?response_type=token&redirect_uri=%@&client_id=%@",
                                 [DSYAPIClient sharedAPI].redirectURI.URLEncodedString,
                                 [DSYAPIClient sharedAPI].clientId.URLEncodedString]];
}

@end
