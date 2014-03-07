// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DSYAlbum.m instead.

#import "_DSYAlbum.h"

const struct DSYAlbumAttributes DSYAlbumAttributes = {
	.artistDisplayName = @"artistDisplayName",
	.canonical = @"canonical",
	.duration = @"duration",
	.editedVersion = @"editedVersion",
	.essential = @"essential",
	.id = @"id",
	.parentalAdvisory = @"parentalAdvisory",
	.popularity = @"popularity",
	.rating = @"rating",
	.releaseDate = @"releaseDate",
	.releaseFormat = @"releaseFormat",
	.streamable = @"streamable",
	.title = @"title",
	.totalCompanionAlbums = @"totalCompanionAlbums",
	.totalTracks = @"totalTracks",
	.type = @"type",
};

const struct DSYAlbumRelationships DSYAlbumRelationships = {
	.tracks = @"tracks",
};

const struct DSYAlbumFetchedProperties DSYAlbumFetchedProperties = {
};

@implementation DSYAlbumID
@end

@implementation _DSYAlbum

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"DSYAlbum" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"DSYAlbum";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"DSYAlbum" inManagedObjectContext:moc_];
}

- (DSYAlbumID*)objectID {
	return (DSYAlbumID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];
	
	if ([key isEqualToString:@"canonicalValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"canonical"];
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
	if ([key isEqualToString:@"essentialValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"essential"];
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
	if ([key isEqualToString:@"ratingValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"rating"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"streamableValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"streamable"];
		keyPaths = [keyPaths setByAddingObjectsFromSet:affectingKey];
		return keyPaths;
	}
	if ([key isEqualToString:@"totalCompanionAlbumsValue"]) {
		NSSet *affectingKey = [NSSet setWithObject:@"totalCompanionAlbums"];
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




@dynamic artistDisplayName;






@dynamic canonical;



- (BOOL)canonicalValue {
	NSNumber *result = [self canonical];
	return [result boolValue];
}

- (void)setCanonicalValue:(BOOL)value_ {
	[self setCanonical:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveCanonicalValue {
	NSNumber *result = [self primitiveCanonical];
	return [result boolValue];
}

- (void)setPrimitiveCanonicalValue:(BOOL)value_ {
	[self setPrimitiveCanonical:[NSNumber numberWithBool:value_]];
}





@dynamic duration;



- (int32_t)durationValue {
	NSNumber *result = [self duration];
	return [result intValue];
}

- (void)setDurationValue:(int32_t)value_ {
	[self setDuration:[NSNumber numberWithInt:value_]];
}

- (int32_t)primitiveDurationValue {
	NSNumber *result = [self primitiveDuration];
	return [result intValue];
}

- (void)setPrimitiveDurationValue:(int32_t)value_ {
	[self setPrimitiveDuration:[NSNumber numberWithInt:value_]];
}





@dynamic editedVersion;



- (BOOL)editedVersionValue {
	NSNumber *result = [self editedVersion];
	return [result boolValue];
}

- (void)setEditedVersionValue:(BOOL)value_ {
	[self setEditedVersion:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveEditedVersionValue {
	NSNumber *result = [self primitiveEditedVersion];
	return [result boolValue];
}

- (void)setPrimitiveEditedVersionValue:(BOOL)value_ {
	[self setPrimitiveEditedVersion:[NSNumber numberWithBool:value_]];
}





@dynamic essential;



- (BOOL)essentialValue {
	NSNumber *result = [self essential];
	return [result boolValue];
}

- (void)setEssentialValue:(BOOL)value_ {
	[self setEssential:[NSNumber numberWithBool:value_]];
}

- (BOOL)primitiveEssentialValue {
	NSNumber *result = [self primitiveEssential];
	return [result boolValue];
}

- (void)setPrimitiveEssentialValue:(BOOL)value_ {
	[self setPrimitiveEssential:[NSNumber numberWithBool:value_]];
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





@dynamic rating;



- (int16_t)ratingValue {
	NSNumber *result = [self rating];
	return [result shortValue];
}

- (void)setRatingValue:(int16_t)value_ {
	[self setRating:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveRatingValue {
	NSNumber *result = [self primitiveRating];
	return [result shortValue];
}

- (void)setPrimitiveRatingValue:(int16_t)value_ {
	[self setPrimitiveRating:[NSNumber numberWithShort:value_]];
}





@dynamic releaseDate;






@dynamic releaseFormat;






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






@dynamic totalCompanionAlbums;



- (int16_t)totalCompanionAlbumsValue {
	NSNumber *result = [self totalCompanionAlbums];
	return [result shortValue];
}

- (void)setTotalCompanionAlbumsValue:(int16_t)value_ {
	[self setTotalCompanionAlbums:[NSNumber numberWithShort:value_]];
}

- (int16_t)primitiveTotalCompanionAlbumsValue {
	NSNumber *result = [self primitiveTotalCompanionAlbums];
	return [result shortValue];
}

- (void)setPrimitiveTotalCompanionAlbumsValue:(int16_t)value_ {
	[self setPrimitiveTotalCompanionAlbums:[NSNumber numberWithShort:value_]];
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






@dynamic tracks;

	
- (NSMutableSet*)tracksSet {
	[self willAccessValueForKey:@"tracks"];
  
	NSMutableSet *result = (NSMutableSet*)[self mutableSetValueForKey:@"tracks"];
  
	[self didAccessValueForKey:@"tracks"];
	return result;
}
	






@end
