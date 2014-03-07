#import "_DSYTrack.h"
@class DSYRTMPObject;

@interface DSYTrack : _DSYTrack

@property (nonatomic,assign) BOOL isGroup;

#pragma mark - Class Initializers
///-----------------------------------------------------------
/// @name Class Initializers
///-----------------------------------------------------------
+(DSYTrack *)trackWithDictionary:(NSDictionary *)dictionary;
+(NSArray *)tracksWithDictionaries:(NSArray *)dictionaries;
+(NSArray *)tracksWithSearchDictionaries:(NSArray *)searchDictionaries;

#pragma mark - Getting Stream Info
///-----------------------------------------------------------
/// @name Getting Stream Info
///-----------------------------------------------------------
-(void)getRTMPStreamWithCompletion:(void(^)(DSYRTMPObject *rtmpStreamInfo, NSError *error))completionBlock;

@end
