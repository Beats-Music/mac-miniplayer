#import "DSYUser.h"

static DSYUser *_sessionUser;

@interface DSYUser ()

// Private interface goes here.

@end


@implementation DSYUser

+(DSYUser *)userFromTokenDictionary:(NSDictionary *)tokenDictionary
{
    return [self importObjects:@[ tokenDictionary ]
                     inContext:[NSManagedObjectContext MR_contextForCurrentThread]
               usingEntityName:self.className
                  onPrimaryKey:@"id"
                    withUpdate:^(NSManagedObject *object, NSDictionary *info, NSManagedObjectContext *context) {
                        DSYUser *user = (DSYUser *)object;
                        user.id = [info objectForKey:@"user_context"];
                    }].firstObject;
}

+(void)setSessionUser:(DSYUser *)sessionUser
{
    _sessionUser = sessionUser;
}

+(DSYUser *)sessionUser
{
    return _sessionUser;
}

@end
