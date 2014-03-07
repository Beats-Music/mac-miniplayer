#import "_DSYPlaylist.h"

@interface DSYPlaylist : _DSYPlaylist {}

+(NSArray *)playlistsWithDictionaries:(NSArray *)dictionaries;
+(DSYPlaylist *)playlistWithDictionary:(NSDictionary *)dictionary;

@property (nonatomic,assign) BOOL isGroup;

@end
