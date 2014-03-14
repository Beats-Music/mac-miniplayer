#import "DSYTrack.h"

#import "DSYAPIClient.h"
#import "DSYRTMPObject.h"

@implementation DSYTrack
@synthesize isGroup;

+(DSYTrack *)trackWithDictionary:(NSDictionary *)dictionary
{
    return [self tracksWithDictionaries:@[ dictionary ]].firstObject;
}

+(NSArray *)tracksWithDictionaries:(NSArray *)dictionaries
{
    return [self importObjects:dictionaries
                     inContext:[NSManagedObjectContext MR_contextForCurrentThread]
               usingEntityName:self.className
                  onPrimaryKey:@"id"
                    withUpdate:^(NSManagedObject *object, NSDictionary *info, NSManagedObjectContext *context) {
        DSYTrack *track = (DSYTrack *)object;
        track.artistDisplayName = [info objectForKeyOrNil:@"artist_display_name"];
        track.discNumber        = [info objectForKeyOrNil:@"disc_number"];
        track.duration          = [info objectForKeyOrNil:@"duration"];
        track.editedVersion     = [info objectForKeyOrNil:@"edited_version"];
        track.id                = [info objectForKeyOrNil:@"id"];
        track.parentalAdvisory  = [info objectForKeyOrNil:@"parental_advisory"];
        track.popularity        = [info objectForKeyOrNil:@"popularity"];
        track.releaseDate       = [NSDate dateWithYYYYMMSSStringOrNil:[info objectForKeyOrNil:@"release_date"]];
        track.streamable        = [info objectForKeyOrNil:@"streamable"];
        track.title             = [info objectForKeyOrNil:@"title"];
        track.trackPosition     = [info objectForKeyOrNil:@"track_position"];
        track.type              = [info objectForKeyOrNil:@"type"];
    }];
}

#pragma mark - Getting Stream Info
-(void)getRTMPStreamWithCompletion:(void (^)(DSYRTMPObject *, NSError *))completionBlock
{
    [[DSYAPIClient sharedAPI] getAudioRTMPForTrackWithTrackId:self.id parameters:@{ @"acquire" : @"1" } finishedLoading:^{
    } success:^(id response) {
        completionBlock([DSYRTMPObject RTMPObjectWithDictionary:response[@"data"]],
                        nil );
    } failed:^(NSError *error, id response) {
        completionBlock(nil,
                        error );
    }];
}

@end
