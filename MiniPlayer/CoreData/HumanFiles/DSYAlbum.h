#import "_DSYAlbum.h"

@interface DSYAlbum : _DSYAlbum

#pragma mark - Import

+(DSYAlbum *)albumWithDictionary:(NSDictionary *)dictionary;
+(NSArray *)albumsWithDictionaries:(NSArray *)dictionaries;
+(NSArray *)albumsWithSearchDictionaries:(NSArray *)searchDictionaries;

@property (nonatomic,assign) BOOL isGroup;

@end
