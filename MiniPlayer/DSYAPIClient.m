//
//  DSYAPIClient.m
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/1/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import "DSYAPIClient.h"

#define DSY_BASE_URL_STRING @"https://partner.api.beatsmusic.com/v1/api"
#define DSY_BASE_URL        [NSURL URLWithString:DSY_BASE_URL_STRING]

@implementation DSYAPIClient

#pragma mark - Initialization
-(id)init
{
    self = [super initWithBaseURL:DSY_BASE_URL]; // Base URL set here
    if( self )
    {    
        self.responseSerializer = [AFJSONResponseSerializer serializer];
    }
    return self;
}

#pragma mark - Shared Instance
+(instancetype)sharedAPI {
    static DSYAPIClient *_sharedAPI = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedAPI = [[DSYAPIClient alloc] init];
    });
    return _sharedAPI;
}

#pragma mark - Private Override
-(AFHTTPRequestOperation *)GET:(NSString *)URLString
                    parameters:(NSDictionary *)parameters
                       success:(void (^)(AFHTTPRequestOperation *, id))success
                       failure:(void (^)(AFHTTPRequestOperation *, NSError *))failure
{
    parameters = [self _authorizedParametersWithParameters:parameters];
    return [super GET:URLString
           parameters:parameters
              success:success
              failure:failure];
}

#pragma mark - Generic Requests
-(void)_getImageEndpoint:(NSString *)endpoint
              parameters:(NSDictionary *)params
         finishedLoading:(FinishedLoadingBlock)finishedLoading
                 success:(SuccessBlock)success
                  failed:(FailureBlock)failed
{
    NSMutableURLRequest *request = [self.requestSerializer requestWithMethod:@"GET"
                                                                   URLString:[[NSURL URLWithString:endpoint relativeToURL:self.baseURL] absoluteString]
                                                                  parameters:[self _authorizedParametersWithParameters:params]
                                                                       error:nil];
    AFHTTPRequestOperation *requestOperation = [[AFHTTPRequestOperation alloc] initWithRequest:request];
    requestOperation.responseSerializer = [AFImageResponseSerializer serializer];
    [requestOperation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
        // Success
        finishedLoading();
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        // Fail
        finishedLoading();
        failed(error,operation.responseObject);
    }];
    [self.operationQueue addOperation:requestOperation];
}

-(void)_getEndpoint:(NSString *)endpoint
         parameters:(NSDictionary *)params
    finishedLoading:(FinishedLoadingBlock)finishedLoading
            success:(SuccessBlock)success
             failed:(FailureBlock)failed
{
    // Send off request
    [self GET:endpoint parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        // Success
        finishedLoading();
        success(responseObject);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        
        // Fail
        finishedLoading();
        failed(error,operation.responseObject);
        
    }];
}

#pragma mark - Albums
-(void)getAlbumArtWithAlbumId:(NSString *)albumId
                   parameters:(NSDictionary *)parameters
              finishedLoading:(FinishedLoadingBlock)finishedLoading
                      success:(SuccessBlock)success
                       failed:(FailureBlock)failed
{
    [self _getImageEndpoint:[NSString stringWithFormat:@"albums/%@/images/default",albumId]
                 parameters:parameters
            finishedLoading:finishedLoading
                    success:success
                     failed:failed];
}

-(void)getAlbumWithAlbumId:(NSString *)albumId
                parameters:(NSDictionary *)parameters
           finishedLoading:(FinishedLoadingBlock)finishedLoading
                   success:(SuccessBlock)success
                    failed:(FailureBlock)failed
{
    [self _getEndpoint:[NSString stringWithFormat:@"albums/%@",albumId]
            parameters:parameters
       finishedLoading:finishedLoading
               success:success
                failed:failed];
}

-(void)getAlbumTracksWithAlbumId:(NSString *)albumId
                      parameters:(NSDictionary *)parameters
                 finishedLoading:(FinishedLoadingBlock)finishedLoading
                         success:(SuccessBlock)success
                          failed:(FailureBlock)failed
{
    [self _getEndpoint:[NSString stringWithFormat:@"albums/%@/tracks",albumId]
            parameters:parameters
       finishedLoading:finishedLoading
               success:success
                failed:failed];
}

#pragma mark - Artists
-(void)getArtistArtWithArtistId:(NSString *)artistId
                     parameters:(NSDictionary *)parameters
                finishedLoading:(FinishedLoadingBlock)finishedLoading
                        success:(SuccessBlock)success
                         failed:(FailureBlock)failed
{
    [self _getImageEndpoint:[NSString stringWithFormat:@"artists/%@/images/default",artistId]
                 parameters:parameters
            finishedLoading:finishedLoading
                    success:success
                     failed:failed];
}

-(void)getArtistCoverArtWithArtistId:(NSString *)artistId
                          parameters:(NSDictionary *)parameters
                     finishedLoading:(FinishedLoadingBlock)finishedLoading
                             success:(SuccessBlock)success
                              failed:(FailureBlock)failed
{
    [self _getImageEndpoint:[NSString stringWithFormat:@"artists/%@/images/cover",artistId]
                 parameters:parameters
            finishedLoading:finishedLoading
                    success:success
                     failed:failed];
}

#pragma mark - Audio
-(void)getAudioRTMPForTrackWithTrackId:(NSString *)trackId
                            parameters:(NSDictionary *)parameters
                       finishedLoading:(FinishedLoadingBlock)finishedLoading
                               success:(SuccessBlock)success
                                failed:(FailureBlock)failed
{
    [self _getEndpoint:[NSString stringWithFormat:@"tracks/%@/audio",trackId]
            parameters:parameters
       finishedLoading:finishedLoading
               success:success
                failed:failed];
}

#pragma mark - Playlists
-(void)getPlaylistsForUserId:(NSString *)userId
                  parameters:(NSDictionary *)parameters
             finishedLoading:(FinishedLoadingBlock)finishedLoading
                     success:(SuccessBlock)success
                      failed:(FailureBlock)failed
{
    [self _getEndpoint:[NSString stringWithFormat:@"users/%@/playlists",userId]
            parameters:parameters
       finishedLoading:finishedLoading
               success:success
                failed:failed];
}

-(void)getPlaylistArtWithPlaylistId:(NSString *)playlistId
                         parameters:(NSDictionary *)parameters
                    finishedLoading:(FinishedLoadingBlock)finishedLoading
                            success:(SuccessBlock)success
                             failed:(FailureBlock)failed
{
    [self _getImageEndpoint:[NSString stringWithFormat:@"playlists/%@/images/default",playlistId]
                 parameters:parameters
            finishedLoading:finishedLoading
                    success:success
                     failed:failed];
}

-(void)getPlaylistTracksForPlaylistId:(NSString *)playlistId
                           parameters:(NSDictionary *)parameters
                      finishedLoading:(FinishedLoadingBlock)finishedLoading
                              success:(SuccessBlock)success
                               failed:(FailureBlock)failed
{
    [self _getEndpoint:[NSString stringWithFormat:@"playlists/%@/tracks",playlistId]
            parameters:nil
       finishedLoading:finishedLoading
               success:success
                failed:failed];
}

#pragma mark - Searching
-(void)searchWithQuery:(NSString *)query
            parameters:(NSDictionary *)parameters
       finishedLoading:(FinishedLoadingBlock)finishedLoading
               success:(SuccessBlock)success
                failed:(FailureBlock)failed
{
    NSMutableDictionary *params = @{ @"q" : query }.mutableCopy;
    if( parameters )
    {
        [params addEntriesFromDictionary:parameters];
    }
    [self _getEndpoint:@"search"
            parameters:params
       finishedLoading:finishedLoading
               success:success
                failed:failed];
}

#pragma mark - Tracks
-(void)getTrackArtWithTrackId:(NSString *)trackId
                   parameters:(NSDictionary *)parameters
              finishedLoading:(FinishedLoadingBlock)finishedLoading
                      success:(SuccessBlock)success
                       failed:(FailureBlock)failed
{
    [self _getImageEndpoint:[NSString stringWithFormat:@"tracks/%@/images/default",trackId]
                 parameters:parameters
            finishedLoading:finishedLoading
                    success:success
                     failed:failed];
}

-(void)getTrackArtistsWithTrackId:(NSString *)trackId
                       parameters:(NSDictionary *)parameters
                  finishedLoading:(FinishedLoadingBlock)finishedLoading
                          success:(SuccessBlock)success
                           failed:(FailureBlock)failed
{
    [self _getEndpoint:[NSString stringWithFormat:@"tracks/%@/artists",trackId]
            parameters:parameters
       finishedLoading:finishedLoading
               success:success
                failed:failed];
}

-(void)getTrackWithTrackId:(NSString *)trackId
                parameters:(NSDictionary *)parameters
           finishedLoading:(FinishedLoadingBlock)finishedLoading
                   success:(SuccessBlock)success
                    failed:(FailureBlock)failed
{
    [self _getEndpoint:[NSString stringWithFormat:@"tracks/%@",trackId]
            parameters:parameters
       finishedLoading:finishedLoading
               success:success
                failed:failed];
}

#pragma mark - Token
-(void)getTokenDataWithParameters:(NSDictionary *)parameters
                  finishedLoading:(FinishedLoadingBlock)finishedLoading
                          success:(SuccessBlock)success
                           failed:(FailureBlock)failed
{
    [self _getEndpoint:@"me"
            parameters:parameters
       finishedLoading:finishedLoading
               success:success
                failed:failed];
}

#pragma mark - User
-(void)getUserArtWithUserId:(NSString *)userId
                 parameters:(NSDictionary *)parameters
            finishedLoading:(FinishedLoadingBlock)finishedLoading
                    success:(SuccessBlock)success
                     failed:(FailureBlock)failed
{
    [self _getImageEndpoint:[NSString stringWithFormat:@"users/%@/images/default",userId]
                 parameters:parameters
            finishedLoading:finishedLoading
                    success:success
                     failed:failed];
}

#pragma mark - Utilties
-(NSDictionary *)_authorizedParametersWithParameters:(NSDictionary *)params
{
    NSMutableDictionary *mutableAuthDictionary = [self _mutableAuthDictionary];
    if( params )
    {
        [mutableAuthDictionary addEntriesFromDictionary:params];
    }
    return mutableAuthDictionary.copy;
}

-(NSMutableDictionary *)_mutableAuthDictionary
{
    NSMutableDictionary *mutableAuthDictionary = [NSMutableDictionary dictionary];
    if( self.accessToken )
    {
        mutableAuthDictionary[@"access_token"] = self.accessToken;
    }
    if( self.clientId )
    {
        mutableAuthDictionary[@"client_id"] = self.clientId;
    }
    if( self.clientSecret )
    {
        mutableAuthDictionary[@"client_secret"] = self.clientSecret;
    }
    return mutableAuthDictionary;
}

@end
