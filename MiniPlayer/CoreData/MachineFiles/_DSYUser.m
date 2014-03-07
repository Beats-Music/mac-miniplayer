// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DSYUser.m instead.

#import "_DSYUser.h"

const struct DSYUserAttributes DSYUserAttributes = {
	.id = @"id",
};

const struct DSYUserRelationships DSYUserRelationships = {
};

const struct DSYUserFetchedProperties DSYUserFetchedProperties = {
};

@implementation DSYUserID
@end

@implementation _DSYUser

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"DSYUser" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"DSYUser";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"DSYUser" inManagedObjectContext:moc_];
}

- (DSYUserID*)objectID {
	return (DSYUserID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	

	return keyPaths;
}




@dynamic id;











@end
