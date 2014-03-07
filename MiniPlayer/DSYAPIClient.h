//
//  DSYAPIClient.h
//  MiniPlayer
//
//  Created by Syed Haris Ali on 3/1/14.
//  Copyright (c) 2014 Beats Music. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 The DSYAPIClient, a subclass of AFNetworking's AFHTTPRequestOperationManager, provides an interface to interact with the Beats Music API via the REST protocol. Most common use cases of this will be use the shared instance, `sharedAPI`, to perform individual requests and update the UI with the response or display the proper error message if the request fails. There are three blocks per request that will be return upon the response: a loading block regardless of success or failure, a success block with the JSON result, and fail block with the error and the raw JSON result.
 @warning Responses might be returned on a background thread so any UI updating in finished loading, success, and fail blocks should be using a GCD main thread block (dispatch_async(dispatch_get_main_queue(),^{})
 */
@interface DSYAPIClient : AFHTTPRequestOperationManager

#pragma mark - Blocks
///-----------------------------------------------------------
/// @name Response Blocks
///-----------------------------------------------------------

/**
 @brief	A block that executes as soon as a request finishes.
 */
typedef void (^FinishedLoadingBlock)(void);

/**
 @brief	A block that executes when there is a successful response.
 @param response The parsed JSON object that represents the response from the request
 */
typedef void (^SuccessBlock)(id response);

/**
 @brief	A block that executes when the request failed for some reason.
 @param error An error representing the reason why the request failed.
 */
typedef void (^FailureBlock)(NSError *error, id response);

#pragma mark - Shared Instance
///-----------------------------------------------------------
/// @name Shared Instance
///-----------------------------------------------------------

/**
 Provides a shared instance of the DSYAPIClient class for reuse. You should mainly be using this to make requests.
 @return A shared instance (singleton) of the DSYAPIClient class.
 */
+(instancetype)sharedAPI;

#pragma mark - Setters
///-----------------------------------------------------------
/// @name Setting The Authorization Token
///-----------------------------------------------------------

/**
 An NSString representing the access token on the DSYAPIClient instance for use in authorized requests.
 */
@property (nonatomic,copy) NSString *accessToken;

///-----------------------------------------------------------
/// @name Setting The Client ID, Client Secret, and Redirect URI
///-----------------------------------------------------------

/**
 An NSString representing the client id that will appended to the request as a parameter for authorized requests.
 */
@property (nonatomic,copy) NSString *clientId;

/**
 An NSString representing the client secret key that will be appended to the request as a parameter for authorized requests.
 */
@property (nonatomic,copy) NSString *clientSecret;

/**
 An NSString representing the redirect uri used during the authentication process.
 */
@property (nonatomic,copy) NSString *redirectURI;

#pragma mark - Albums
///-----------------------------------------------------------
/// @name Getting Album Data
///-----------------------------------------------------------

/**
 Performs an asynchronous request to the Beats Music API to fetch the album art for a particular album id. If successful, the image for the album will be returned in the `SuccessBlock` as an NSImage.
 @param albumId         An NSString representing the album id you'd like to fetch. This looks something like (al948290)
 @param parameters      An NSDictionary of parameters that will be formatted as a query string and appended to the end of the query string URL. (For instance, https://partner.api.beatsmusic.com/v1/endpoint/:endpoint_id?parameterOne=FirstParameter&parameterTwo=secondParameter. Please refer to the Beats Music API for documentation regarding specific parameters per endpoint.
 @param finishedLoading A block that executes when the request has finished regardless of success or failure.
 @param success         A block that executes if there was a successful request. The response is returned as an id, which is typically either an NSDictionary, an NSArray, or an NSImage.
 @param failed          A block that executes if there was a failed request (i.e. 401, 403, 500, etc). The fail block will return an NSError describing the issue and the raw response as an id.
 */
-(void)getAlbumArtWithAlbumId:(NSString *)albumId
                   parameters:(NSDictionary *)parameters
              finishedLoading:(FinishedLoadingBlock)finishedLoading
                      success:(SuccessBlock)success
                       failed:(FailureBlock)failed;

/**
 Performs an asynchronous request to the Beats Music API to fetch the album metadata for a particular album id. If successful, the album metadata will be returned as the "data" key in the `SuccessBlock` response object as an NSDictionary.
 @param albumId         An NSString representing the album id you'd like to fetch. This looks something like (al948290)
 @param parameters      An NSDictionary of parameters that will be formatted as a query string and appended to the end of the query string URL. (For instance, https://partner.api.beatsmusic.com/v1/endpoint/:endpoint_id?parameterOne=FirstParameter&parameterTwo=secondParameter. Please refer to the Beats Music API for documentation regarding specific parameters per endpoint.
 @param finishedLoading A block that executes when the request has finished regardless of success or failure.
 @param success         A block that executes if there was a successful request. The response is returned as an id, which is typically either an NSDictionary, an NSArray, or an NSImage.
 @param failed          A block that executes if there was a failed request (i.e. 401, 403, 500, etc). The fail block will return an NSError describing the issue and the raw response as an id.
 */
-(void)getAlbumWithAlbumId:(NSString *)albumId
                parameters:(NSDictionary *)parameters
           finishedLoading:(FinishedLoadingBlock)finishedLoading
                   success:(SuccessBlock)success
                    failed:(FailureBlock)failed;

/**
 Performs an asynchronous request to the Beats Music API to fetch the tracks metadata for a particular album id. If successful, the tracks metadata will be returned as the "data" key in the `SuccessBlock` as an NSArray.
 @param albumId         An NSString representing the album id you'd like to fetch. This looks something like (al948290)
 @param parameters      An NSDictionary of parameters that will be formatted as a query string and appended to the end of the query string URL. (For instance, https://partner.api.beatsmusic.com/v1/endpoint/:endpoint_id?parameterOne=FirstParameter&parameterTwo=secondParameter. Please refer to the Beats Music API for documentation regarding specific parameters per endpoint.
 @param finishedLoading A block that executes when the request has finished regardless of success or failure.
 @param success         A block that executes if there was a successful request. The response is returned as an id, which is typically either an NSDictionary, an NSArray, or an NSImage.
 @param failed          A block that executes if there was a failed request (i.e. 401, 403, 500, etc). The fail block will return an NSError describing the issue and the raw response as an id.
 */
-(void)getAlbumTracksWithAlbumId:(NSString *)albumId
                      parameters:(NSDictionary *)parameters
                 finishedLoading:(FinishedLoadingBlock)finishedLoading
                         success:(SuccessBlock)success
                          failed:(FailureBlock)failed;

#pragma mark - Artists
///-----------------------------------------------------------
/// @name Getting Artist Data
///-----------------------------------------------------------

/**
 Performs an asynchronous request to the Beats Music API to fetch the cover art for a particular artist id. If successful, the image for the artist's cover art will be returned in the `SuccessBlock` as an NSImage.
 @param artistId         An NSString representing the artist id you'd like to fetch. This looks something like (ar24162)
 @param parameters      An NSDictionary of parameters that will be formatted as a query string and appended to the end of the query string URL. (For instance, https://partner.api.beatsmusic.com/v1/endpoint/:endpoint_id?parameterOne=FirstParameter&parameterTwo=secondParameter. Please refer to the Beats Music API for documentation regarding specific parameters per endpoint.
 @param finishedLoading A block that executes when the request has finished regardless of success or failure.
 @param success         A block that executes if there was a successful request. The response is returned as an id, which is typically either an NSDictionary, an NSArray, or an NSImage.
 @param failed          A block that executes if there was a failed request (i.e. 401, 403, 500, etc). The fail block will return an NSError describing the issue and the raw response as an id.
 */
-(void)getArtistCoverArtWithArtistId:(NSString *)artistId
                          parameters:(NSDictionary *)parameters
                     finishedLoading:(FinishedLoadingBlock)finishedLoading
                             success:(SuccessBlock)success
                              failed:(FailureBlock)failed;

/**
 Performs an asynchronous request to the Beats Music API to fetch the default artwork for a particular artist id. If successful, the image for the artist's default image will be returned in the `SuccessBlock` as an NSImage.
 @param artistId         An NSString representing the artist id you'd like to fetch. This looks something like (ar24162)
 @param parameters      An NSDictionary of parameters that will be formatted as a query string and appended to the end of the query string URL. (For instance, https://partner.api.beatsmusic.com/v1/endpoint/:endpoint_id?parameterOne=FirstParameter&parameterTwo=secondParameter. Please refer to the Beats Music API for documentation regarding specific parameters per endpoint.
 @param finishedLoading A block that executes when the request has finished regardless of success or failure.
 @param success         A block that executes if there was a successful request. The response is returned as an id, which is typically either an NSDictionary, an NSArray, or an NSImage.
 @param failed          A block that executes if there was a failed request (i.e. 401, 403, 500, etc). The fail block will return an NSError describing the issue and the raw response as an id.
 */
-(void)getArtistArtWithArtistId:(NSString *)artistId
                     parameters:(NSDictionary *)parameters
                finishedLoading:(FinishedLoadingBlock)finishedLoading
                        success:(SuccessBlock)success
                         failed:(FailureBlock)failed;

#pragma mark - Audio
///-----------------------------------------------------------
/// @name Getting Audio Data
///-----------------------------------------------------------

/**
 Performs an asynchronous request to the Beats Music API to fetch the track's RTMP stream for audio playback information. If successful, the RTMP stream's information will be returned as the "data" key in the `SuccessBlock` as an NSDictionary. RTMP streams must be connected to within 15 seconds of receiving this response or else they will expire and no longer allow connections.
 @param trackId         An NSString representing the track id you'd like to fetch. This looks something like (tr9238123)
 @param parameters      An NSDictionary of parameters that will be formatted as a query string and appended to the end of the query string URL. (For instance, https://partner.api.beatsmusic.com/v1/endpoint/:endpoint_id?parameterOne=FirstParameter&parameterTwo=secondParameter. Please refer to the Beats Music API for documentation regarding specific parameters per endpoint.
 @param finishedLoading A block that executes when the request has finished regardless of success or failure.
 @param success         A block that executes if there was a successful request. The response is returned as an id, which is typically either an NSDictionary, an NSArray, or an NSImage.
 @param failed          A block that executes if there was a failed request (i.e. 401, 403, 500, etc). The fail block will return an NSError describing the issue and the raw response as an id.
 */
-(void)getAudioRTMPForTrackWithTrackId:(NSString *)trackId
                            parameters:(NSDictionary *)parameters
                       finishedLoading:(FinishedLoadingBlock)finishedLoading
                               success:(SuccessBlock)success
                                failed:(FailureBlock)failed;

#pragma mark - Playlists
///-----------------------------------------------------------
/// @name Getting Playlist Data
///-----------------------------------------------------------

/**
 Performs an asynchronous request to the Beats Music API to get the default image for a specific playlist. If successful, the playlist's image will be returned in the `SuccessBlock` as an NSImage.
 @param playlistId      An NSString representing the playlist id you'd like to fetch. This looks something like (pl145291027756875776).
 @param parameters      An NSDictionary of parameters that will be formatted as a query string and appended to the end of the query string URL. (For instance, https://partner.api.beatsmusic.com/v1/endpoint/:endpoint_id?parameterOne=FirstParameter&parameterTwo=secondParameter. Please refer to the Beats Music API for documentation regarding specific parameters per endpoint.
 @param finishedLoading A block that executes when the request has finished regardless of success or failure.
 @param success         A block that executes if there was a successful request. The response is returned as an id, which is typically either an NSDictionary, an NSArray, or an NSImage.
 @param failed          A block that executes if there was a failed request (i.e. 401, 403, 500, etc). The fail block will return an NSError describing the issue and the raw response as an id.
 */
-(void)getPlaylistArtWithPlaylistId:(NSString *)playlistId
                         parameters:(NSDictionary *)parameters
                    finishedLoading:(FinishedLoadingBlock)finishedLoading
                            success:(SuccessBlock)success
                             failed:(FailureBlock)failed;

/**
 Performs an asynchronous request to the Beats Music API to fetch the tracks metadata for a specific playlist id. If successful, the tracks metadata will be returned in the `SuccessBlock` as an NSArray.
 @param playlistId      An NSString representing the playlist id you'd like to fetch. This looks something like (pl145291027756875776).
 @param parameters      An NSDictionary of parameters that will be formatted as a query string and appended to the end of the query string URL. (For instance, https://partner.api.beatsmusic.com/v1/endpoint/:endpoint_id?parameterOne=FirstParameter&parameterTwo=secondParameter. Please refer to the Beats Music API for documentation regarding specific parameters per endpoint.
 @param finishedLoading A block that executes when the request has finished regardless of success or failure.
 @param success         A block that executes if there was a successful request. The response is returned as an id, which is typically either an NSDictionary, an NSArray, or an NSImage.
 @param failed          A block that executes if there was a failed request (i.e. 401, 403, 500, etc). The fail block will return an NSError describing the issue and the raw response as an id.
 */
-(void)getPlaylistTracksForPlaylistId:(NSString *)playlistId
                           parameters:(NSDictionary *)parameters
                      finishedLoading:(FinishedLoadingBlock)finishedLoading
                              success:(SuccessBlock)success
                               failed:(FailureBlock)failed;

/**
 Performs an asynchronous request to the Beats Music API to fetch the playlists metadata for a specific user id. If successful, the playlists metadata will be returned in the `SuccessBlock` as an NSArray.
 @param userId          An NSString representing the user id for whom you're pulling playlists metadata. This looks something like (1293823490238)
 @param parameters      An NSDictionary of parameters that will be formatted as a query string and appended to the end of the query string URL. (For instance, https://partner.api.beatsmusic.com/v1/endpoint/:endpoint_id?parameterOne=FirstParameter&parameterTwo=secondParameter. Please refer to the Beats Music API for documentation regarding specific parameters per endpoint.
 @param finishedLoading A block that executes when the request has finished regardless of success or failure.
 @param success         A block that executes if there was a successful request. The response is returned as an id, which is typically either an NSDictionary, an NSArray, or an NSImage.
 @param failed          A block that executes if there was a failed request (i.e. 401, 403, 500, etc). The fail block will return an NSError describing the issue and the raw response as an id.
 */
-(void)getPlaylistsForUserId:(NSString *)userId
                  parameters:(NSDictionary *)parameters
             finishedLoading:(FinishedLoadingBlock)finishedLoading
                     success:(SuccessBlock)success
                      failed:(FailureBlock)failed;

#pragma mark - Searching
///-----------------------------------------------------------
/// @name Searching
///-----------------------------------------------------------

/**
 Performs an asynchronous request to the Beats Music API to obtain metadata results for a specific search query. If successful, the search results will be returned in the `SuccessBlock` as an NSArray.
 @param query           An NSString representing the query string you'd like to use for searching.
 @param parameters      An NSDictionary of parameters that will be formatted as a query string and appended to the end of the query string URL. (For instance, https://partner.api.beatsmusic.com/v1/endpoint/:endpoint_id?parameterOne=FirstParameter&parameterTwo=secondParameter. Please refer to the Beats Music API for documentation regarding specific parameters per endpoint.. Please refer to the Beats Music API for documentation regarding specific parameters per endpoint. In this specific case you MUST include a key-value pair for "type". Example "type" values could be genre, artist, album, track, playlist, user
 @param finishedLoading A block that executes when the request has finished regardless of success or failure.
 @param success         A block that executes if there was a successful request. The response is returned as an id, which is typically either an NSDictionary, an NSArray, or an NSImage.
 @param failed          A block that executes if there was a failed request (i.e. 401, 403, 500, etc). The fail block will return an NSError describing the issue and the raw response as an id.
 */
-(void)searchWithQuery:(NSString *)query
            parameters:(NSDictionary *)parameters
       finishedLoading:(FinishedLoadingBlock)finishedLoading
               success:(SuccessBlock)success
                failed:(FailureBlock)failed;

#pragma mark - Tracks
///-----------------------------------------------------------
/// @name Getting Track Data
///-----------------------------------------------------------

/**
 Performs an asynchronous request to the Beats Music API to get artists metadata for a specific track id. If successful, the artists metadata will be returned as the "data" key in the `SuccessBlock` as an NSArray.
 @param trackId         An NSString representing the track id you'd like to fetch. This looks something like (tr9238123)
 @param parameters      An NSDictionary of parameters that will be formatted as a query string and appended to the end of the query string URL. (For instance, https://partner.api.beatsmusic.com/v1/endpoint/:endpoint_id?parameterOne=FirstParameter&parameterTwo=secondParameter. Please refer to the Beats Music API for documentation regarding specific parameters per endpoint.
 @param finishedLoading A block that executes when the request has finished regardless of success or failure.
 @param success         A block that executes if there was a successful request. The response is returned as an id, which is typically either an NSDictionary, an NSArray, or an NSImage.
 @param failed          A block that executes if there was a failed request (i.e. 401, 403, 500, etc). The fail block will return an NSError describing the issue and the raw response as an id.
 */
-(void)getTrackArtistsWithTrackId:(NSString *)trackId
                       parameters:(NSDictionary *)parameters
                  finishedLoading:(FinishedLoadingBlock)finishedLoading
                          success:(SuccessBlock)success
                           failed:(FailureBlock)failed;

/**
 Performs an asynchronous request to the Beats Music API to fetch the album art for a specific track id. If successful, the track's album art will be returned in the `SuccessBlock` as an NSImage.
 @param trackId         An NSString representing the track id you'd like to fetch. This looks something like (tr9238123)
 @param parameters      An NSDictionary of parameters that will be formatted as a query string and appended to the end of the query string URL. (For instance, https://partner.api.beatsmusic.com/v1/endpoint/:endpoint_id?parameterOne=FirstParameter&parameterTwo=secondParameter. Please refer to the Beats Music API for documentation regarding specific parameters per endpoint.
 @param finishedLoading A block that executes when the request has finished regardless of success or failure.
 @param success         A block that executes if there was a successful request. The response is returned as an id, which is typically either an NSDictionary, an NSArray, or an NSImage.
 @param failed          A block that executes if there was a failed request (i.e. 401, 403, 500, etc). The fail block will return an NSError describing the issue and the raw response as an id.
 */
-(void)getTrackArtWithTrackId:(NSString *)trackId
                   parameters:(NSDictionary *)parameters
              finishedLoading:(FinishedLoadingBlock)finishedLoading
                      success:(SuccessBlock)success
                       failed:(FailureBlock)failed;

/**
 Performs an asynchronous request to the Beats Music API to get track metadata for a specific track id. If successful, the track metadata will be returned as the "data" key in the `SuccessBlock` as an NSDictionary.
 @param trackId         An NSString representing the track id you'd like to fetch. This looks something like (tr9238123)
 @param parameters      An NSDictionary of parameters that will be formatted as a query string and appended to the end of the query string URL. (For instance, https://partner.api.beatsmusic.com/v1/endpoint/:endpoint_id?parameterOne=FirstParameter&parameterTwo=secondParameter. Please refer to the Beats Music API for documentation regarding specific parameters per endpoint.
 @param finishedLoading A block that executes when the request has finished regardless of success or failure.
 @param success         A block that executes if there was a successful request. The response is returned as an id, which is typically either an NSDictionary, an NSArray, or an NSImage.
 @param failed          A block that executes if there was a failed request (i.e. 401, 403, 500, etc). The fail block will return an NSError describing the issue and the raw response as an id.
 */
-(void)getTrackWithTrackId:(NSString *)trackId
                parameters:(NSDictionary *)parameters
           finishedLoading:(FinishedLoadingBlock)finishedLoading
                   success:(SuccessBlock)success
                    failed:(FailureBlock)failed;

#pragma mark - Token
///-----------------------------------------------------------
/// @name Getting The Token Data
///-----------------------------------------------------------

/**
 Performs an asynchronous request to the Beats Music API to get information about the specific access token (that is, the `accessToken` property of the DSYAPIClient instance sending the request). If successful, the token metadata will be returned as the "data" key in the `SuccessBlock` as an NSDictionary. You can pull the user id for the access token using this request, parse the response dictionary for the `user_context` key.
 @param parameters      An NSDictionary of parameters that will be formatted as a query string and appended to the end of the query string URL. (For instance, https://partner.api.beatsmusic.com/v1/endpoint/:endpoint_id?parameterOne=FirstParameter&parameterTwo=secondParameter. Please refer to the Beats Music API for documentation regarding specific parameters per endpoint.
 @param finishedLoading A block that executes when the request has finished regardless of success or failure.
 @param success         A block that executes if there was a successful request. The response is returned as an id, which is typically either an NSDictionary, an NSArray, or an NSImage.
 @param failed          A block that executes if there was a failed request (i.e. 401, 403, 500, etc). The fail block will return an NSError describing the issue and the raw response as an id.
 */
-(void)getTokenDataWithParameters:(NSDictionary *)parameters
                  finishedLoading:(FinishedLoadingBlock)finishedLoading
                          success:(SuccessBlock)success
                           failed:(FailureBlock)failed;

#pragma mark - User
///-----------------------------------------------------------
/// @name Getting The User Data
///-----------------------------------------------------------

/**
 Performs an asynchronous request to the Beats Music API to get the image for a specific user id. If successful, the user image will be returned in the `SuccessBlock` as an NSImage.
 @param userId          An NSString representing the user id for whom you're pulling the user image. This looks something like (1293823490238)
 @param parameters      An NSDictionary of parameters that will be formatted as a query string and appended to the end of the query string URL. (For instance, https://partner.api.beatsmusic.com/v1/endpoint/:endpoint_id?parameterOne=FirstParameter&parameterTwo=secondParameter. Please refer to the Beats Music API for documentation regarding specific parameters per endpoint.
 @param finishedLoading A block that executes when the request has finished regardless of success or failure.
 @param success         A block that executes if there was a successful request. The response is returned as an id, which is typically either an NSDictionary, an NSArray, or an NSImage.
 @param failed          A block that executes if there was a failed request (i.e. 401, 403, 500, etc). The fail block will return an NSError describing the issue and the raw response as an id.
 */
-(void)getUserArtWithUserId:(NSString *)userId
                 parameters:(NSDictionary *)parameters
            finishedLoading:(FinishedLoadingBlock)finishedLoading
                    success:(SuccessBlock)success
                     failed:(FailureBlock)failed;
@end
