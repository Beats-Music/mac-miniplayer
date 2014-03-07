// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DSYPlaylist.m instead.

#import "_DSYPlaylist.h"

const struct DSYPlaylistAttributes DSYPlaylistAttributes = {
	.access = @"access",
	.created_at = @"created_at",
	.desc = @"desc",
	.duration = @"duration",
	.id = @"id",
	.name = @"name",
	.parental_advisory = @"parental_advisory",
	.totalSubscribers = @"totalSubscribers",
	.totalTracks = @"totalTracks",
	.type = @"type",
	.updatedAt = @"updatedAt",
	.userDisplayName = @"userDisplayName",
};

const struct DSYPlaylistRelationships DSYPlaylistRelationships = {
};

const struct DSYPlaylistFetchedProperties DSYPlaylistFetchedProperties = {
};

@implementation DSYPlaylistID
@end

@implementation _DSYPlaylist

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"DSYPlaylist" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"DSYPlaylist";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"DSYPlaylist" inManagedObjectContext:moc_];
}

- (DSYPlaylistID*)objectID {
	return (DSYPlaylistID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"durationValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"duration"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"parental_advisoryValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"parental_advisory"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"totalSubscribersValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"totalSubscribers"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"totalTracksValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"totalTracks"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic access;






@dynamic created_at;






@dynamic desc;






@dynamic duration;



- (int16_t)durationValue {
	NSNumber *result = [self duration];
	return [result shortValue];
}

- (void)setDurationValue:(int16_t)value_ {
	[self setDuration:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveDurationValue {
	NSNumber *result = [self primitiveDuration];
	return [result shortValue];
}

- (void)setPrimitiveDurationValue:(int16_t)value_ {
	[self setPrimitiveDuration:[NSNumber numberWithShort:value_]];
}





@dynamic id;






@dynamic name;






@dynamic parental_advisory;



- (int16_t)parental_advisoryValue {
	NSNumber *result = [self parental_advisory];
	return [result shortValue];
}

- (void)setParental_advisoryValue:(int16_t)value_ {
	[self setParental_advisory:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveParental_advisoryValue {
	NSNumber *result = [self primitiveParental_advisory];
	return [result shortValue];
}

- (void)setPrimitiveParental_advisoryValue:(int16_t)value_ {
	[self setPrimitiveParental_advisory:[NSNumber numberWithShort:value_]];
}





@dynamic totalSubscribers;



- (int32_t)totalSubscribersValue {
	NSNumber *result = [self totalSubscribers];
	return [result intValue];
}

- (void)setTotalSubscribersValue:(int32_t)value_ {
	[self setTotalSubscribers:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveTotalSubscribersValue {
	NSNumber *result = [self primitiveTotalSubscribers];
	return [result intValue];
}

- (void)setPrimitiveTotalSubscribersValue:(int32_t)value_ {
	[self setPrimitiveTotalSubscribers:[NSNumber numberWithInt:value_]];
}





@dynamic totalTracks;



- (int16_t)totalTracksValue {
	NSNumber *result = [self totalTracks];
	return [result shortValue];
}

- (void)setTotalTracksValue:(int16_t)value_ {
	[self setTotalTracks:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveTotalTracksValue {
	NSNumber *result = [self primitiveTotalTracks];
	return [result shortValue];
}

- (void)setPrimitiveTotalTracksValue:(int16_t)value_ {
	[self setPrimitiveTotalTracks:[NSNumber numberWithShort:value_]];
}





@dynamic type;






@dynamic updatedAt;






@dynamic userDisplayName;











@end
