#import "DSYAlbum.h"


@interface DSYAlbum ()

// Private interface goes here.

@end


@implementation DSYAlbum
@synthesize isGroup;

+(DSYAlbum *)albumWithDictionary:(NSDictionary *)dictionary
{
    return [self albumsWithDictionaries:@[ dictionary ]].firstObject;
}

+(NSArray *)albumsWithDictionaries:(NSArray *)dictionaries
{
    return [self importObjects:dictionaries
                     inContext:[NSManagedObjectContext MR_contextForCurrentThread]
               usingEntityName:self.className
                  onPrimaryKey:@"id"
                    withUpdate:^(NSManagedObject *object, NSDictionary *info, NSManagedObjectContext *context) {
        DSYAlbum *album = (DSYAlbum *)object;
        album.artistDisplayName     = [info objectForKeyOrNil:@"artist_display_name"];
        album.canonical             = [info objectForKeyOrNil:@"canonical"];
        album.duration              = [info objectForKeyOrNil:@"duration"];
        album.editedVersion         = [info objectForKeyOrNil:@"edited_version"];
        album.essential             = [info objectForKeyOrNil:@"essential"];
        album.id                    = [info objectForKeyOrNil:@"id"];
        album.parentalAdvisory      = [info objectForKeyOrNil:@"parental_advisory"];
        album.popularity            = [info objectForKeyOrNil:@"popularity"];
        album.rating                = [info objectForKeyOrNil:@"rating"];
        album.releaseDate           = [NSDate dateWithYYYYMMSSStringOrNil:[info objectForKeyOrNil:@"release_date"]];
        album.releaseFormat         = [info objectForKeyOrNil:@"release_format"];
        album.streamable            = [info objectForKeyOrNil:@"streamable"];
        album.title                 = [info objectForKeyOrNil:@"title"];
        album.totalCompanionAlbums  = [info objectForKeyOrNil:@"total_companion_albums"];
        album.totalTracks           = [info objectForKeyOrNil:@"total_tracks"];
        album.type                  = [info objectForKeyOrNil:@"type"];       
    }];
}

+(NSArray *)albumsWithSearchDictionaries:(NSArray *)searchDictionaries
{
    return [self importObjects:searchDictionaries
                     inContext:[NSManagedObjectContext MR_contextForCurrentThread]
               usingEntityName:self.className
                  onPrimaryKey:@"id"
                    withUpdate:^(NSManagedObject *object, NSDictionary *info, NSManagedObjectContext *context) {
                        DSYAlbum *album         = (DSYAlbum *)object;
                        album.id                = [info objectForKeyOrNil:@"id"];
                        album.title             = [info objectForKeyOrNil:@"display"];
                        album.artistDisplayName = [info objectForKeyOrNil:@"detail"];
                    }];
}

@end
