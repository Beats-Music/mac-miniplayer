#import "DSYPlaylist.h"


@interface DSYPlaylist ()

// Private interface goes here.

@end


@implementation DSYPlaylist
@synthesize isGroup;

+(NSArray *)playlistsWithDictionaries:(NSArray *)dictionaries
{
    return [self importObjects:dictionaries
                     inContext:[NSManagedObjectContext MR_contextForCurrentThread]
               usingEntityName:self.className
                  onPrimaryKey:@"id"
                    withUpdate:^(NSManagedObject *object, NSDictionary *info, NSManagedObjectContext *context) {
                        DSYPlaylist *playlist = (DSYPlaylist *)object;
                        playlist.access = [info objectForKeyOrNil:@"access"];
                        playlist.created_at = [NSDate dateWithTimeIntervalSince1970:[[info objectForKeyOrNil:@"created_at"] integerValue]];
                        playlist.desc   = [info objectForKeyOrNil:@"description"];
                        playlist.duration = [info objectForKeyOrNil:@"duration"];
                        playlist.id = [info objectForKeyOrNil:@"id"];
                        playlist.name = [info objectForKeyOrNil:@"name"];
                        playlist.parental_advisory = [info objectForKeyOrNil:@"parental_advisory"];
                        playlist.totalSubscribers = [info objectForKeyOrNil:@"total_subscribers"];
                        playlist.totalTracks = [info objectForKeyOrNil:@"total_tracks"];
                        playlist.type = [info objectForKeyOrNil:@"type"];
                        playlist.updatedAt = [NSDate dateWithTimeIntervalSince1970:[[info objectForKeyOrNil:@"updated_at"] integerValue]];
                        playlist.userDisplayName = [info objectForKeyOrNil:@"user_display_name"];
                    }];
}

+(DSYPlaylist *)playlistWithDictionary:(NSDictionary *)dictionary
{
    return [self playlistsWithDictionaries:@[ dictionary ]].firstObject;
}

@end
