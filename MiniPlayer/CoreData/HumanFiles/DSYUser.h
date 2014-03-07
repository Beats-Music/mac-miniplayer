#import "_DSYUser.h"

@interface DSYUser : _DSYUser {}
// Custom logic goes here.

+(DSYUser *)userFromTokenDictionary:(NSDictionary *)tokenDictionary;

+(void)setSessionUser:(DSYUser *)sessionUser;
+(DSYUser *)sessionUser;

@end
