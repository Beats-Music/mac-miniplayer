// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DSYTrack.m instead.

#import "_DSYTrack.h"

const struct DSYTrackAttributes DSYTrackAttributes = {
	.artistDisplayName = @"artistDisplayName",
	.discNumber = @"discNumber",
	.duration = @"duration",
	.editedVersion = @"editedVersion",
	.id = @"id",
	.parentalAdvisory = @"parentalAdvisory",
	.popularity = @"popularity",
	.releaseDate = @"releaseDate",
	.streamable = @"streamable",
	.title = @"title",
	.trackPosition = @"trackPosition",
	.type = @"type",
};

const struct DSYTrackRelationships DSYTrackRelationships = {
	.albums = @"albums",
};

const struct DSYTrackFetchedProperties DSYTrackFetchedProperties = {
};

@implementation DSYTrackID
@end

@implementation _DSYTrack

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"DSYTrack" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"DSYTrack";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"DSYTrack" inManagedObjectContext:moc_];
}

- (DSYTrackID*)objectID {
	return (DSYTrackID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"discNumberValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"discNumber"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"durationValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"duration"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"editedVersionValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"editedVersion"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"parentalAdvisoryValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"parentalAdvisory"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"popularityValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"popularity"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"streamableValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"streamable"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"trackPositionValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"trackPosition"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}

	return keyPaths;
}




@dynamic artistDisplayName;






@dynamic discNumber;



- (int16_t)discNumberValue {
	NSNumber *result = [self discNumber];
	return [result shortValue];
}

- (void)setDiscNumberValue:(int16_t)value_ {
	[self setDiscNumber:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveDiscNumberValue {
	NSNumber *result = [self primitiveDiscNumber];
	return [result shortValue];
}

- (void)setPrimitiveDiscNumberValue:(int16_t)value_ {
	[self setPrimitiveDiscNumber:[NSNumber numberWithShort:value_]];
}





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





@dynamic editedVersion;



- (int16_t)editedVersionValue {
	NSNumber *result = [self editedVersion];
	return [result shortValue];
}

- (void)setEditedVersionValue:(int16_t)value_ {
	[self setEditedVersion:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveEditedVersionValue {
	NSNumber *result = [self primitiveEditedVersion];
	return [result shortValue];
}

- (void)setPrimitiveEditedVersionValue:(int16_t)value_ {
	[self setPrimitiveEditedVersion:[NSNumber numberWithShort:value_]];
}





@dynamic id;






@dynamic parentalAdvisory;



- (BOOL)parentalAdvisoryValue {
	NSNumber *result = [self parentalAdvisory];
	return [result boolValue];
}

- (void)setParentalAdvisoryValue:(BOOL)value_ {
	[self setParentalAdvisory:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveParentalAdvisoryValue {
	NSNumber *result = [self primitiveParentalAdvisory];
	return [result boolValue];
}

- (void)setPrimitiveParentalAdvisoryValue:(BOOL)value_ {
	[self setPrimitiveParentalAdvisory:[NSNumber numberWithBool:value_]];
}





@dynamic popularity;



- (int32_t)popularityValue {
	NSNumber *result = [self popularity];
	return [result intValue];
}

- (void)setPopularityValue:(int32_t)value_ {
	[self setPopularity:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitivePopularityValue {
	NSNumber *result = [self primitivePopularity];
	return [result intValue];
}

- (void)setPrimitivePopularityValue:(int32_t)value_ {
	[self setPrimitivePopularity:[NSNumber numberWithInt:value_]];
}





@dynamic releaseDate;






@dynamic streamable;



- (BOOL)streamableValue {
	NSNumber *result = [self streamable];
	return [result boolValue];
}

- (void)setStreamableValue:(BOOL)value_ {
	[self setStreamable:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveStreamableValue {
	NSNumber *result = [self primitiveStreamable];
	return [result boolValue];
}

- (void)setPrimitiveStreamableValue:(BOOL)value_ {
	[self setPrimitiveStreamable:[NSNumber numberWithBool:value_]];
}





@dynamic title;






@dynamic trackPosition;



- (int16_t)trackPositionValue {
	NSNumber *result = [self trackPosition];
	return [result shortValue];
}

- (void)setTrackPositionValue:(int16_t)value_ {
	[self setTrackPosition:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveTrackPositionValue {
	NSNumber *result = [self primitiveTrackPosition];
	return [result shortValue];
}

- (void)setPrimitiveTrackPositionValue:(int16_t)value_ {
	[self setPrimitiveTrackPosition:[NSNumber numberWithShort:value_]];
}





@dynamic type;






@dynamic albums;

	
- (NSMutableSet*)albumsSet {
	[self willAccessValueForKey:@"albums"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"albums"];
  
	[self didAccessValueForKey:@"albums"];
	return result;
}
	






@end
