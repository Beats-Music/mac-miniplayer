// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DSYAlbum.h instead.

#import <CoreData/CoreData.h>


extern const struct DSYAlbumAttributes {
	__unsafe_unretained NSString *artistDisplayName;
	__unsafe_unretained NSString *canonical;
	__unsafe_unretained NSString *duration;
	__unsafe_unretained NSString *editedVersion;
	__unsafe_unretained NSString *essential;
	__unsafe_unretained NSString *id;
	__unsafe_unretained NSString *parentalAdvisory;
	__unsafe_unretained NSString *popularity;
	__unsafe_unretained NSString *rating;
	__unsafe_unretained NSString *releaseDate;
	__unsafe_unretained NSString *releaseFormat;
	__unsafe_unretained NSString *streamable;
	__unsafe_unretained NSString *title;
	__unsafe_unretained NSString *totalCompanionAlbums;
	__unsafe_unretained NSString *totalTracks;
	__unsafe_unretained NSString *type;
} DSYAlbumAttributes;

extern const struct DSYAlbumRelationships {
	__unsafe_unretained NSString *tracks;
} DSYAlbumRelationships;

extern const struct DSYAlbumFetchedProperties {
} DSYAlbumFetchedProperties;

@class DSYTrack;


















@interface DSYAlbumID : NSManagedObjectID {}
@end

@interface _DSYAlbum : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (DSYAlbumID*)objectID;





@property (nonatomic, strong) NSString* artistDisplayName;



//- (BOOL)validateArtistDisplayName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* canonical;



@property BOOL canonicalValue;
- (BOOL)canonicalValue;
- (void)setCanonicalValue:(BOOL)value_;

//- (BOOL)validateCanonical:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* duration;



@property int32_t durationValue;
- (int32_t)durationValue;
- (void)setDurationValue:(int32_t)value_;

//- (BOOL)validateDuration:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* editedVersion;



@property BOOL editedVersionValue;
- (BOOL)editedVersionValue;
- (void)setEditedVersionValue:(BOOL)value_;

//- (BOOL)validateEditedVersion:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* essential;



@property BOOL essentialValue;
- (BOOL)essentialValue;
- (void)setEssentialValue:(BOOL)value_;

//- (BOOL)validateEssential:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* id;



//- (BOOL)validateId:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* parentalAdvisory;



@property BOOL parentalAdvisoryValue;
- (BOOL)parentalAdvisoryValue;
- (void)setParentalAdvisoryValue:(BOOL)value_;

//- (BOOL)validateParentalAdvisory:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* popularity;



@property int32_t popularityValue;
- (int32_t)popularityValue;
- (void)setPopularityValue:(int32_t)value_;

//- (BOOL)validatePopularity:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* rating;



@property int16_t ratingValue;
- (int16_t)ratingValue;
- (void)setRatingValue:(int16_t)value_;

//- (BOOL)validateRating:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* releaseDate;



//- (BOOL)validateReleaseDate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* releaseFormat;



//- (BOOL)validateReleaseFormat:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* streamable;



@property BOOL streamableValue;
- (BOOL)streamableValue;
- (void)setStreamableValue:(BOOL)value_;

//- (BOOL)validateStreamable:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* title;



//- (BOOL)validateTitle:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* totalCompanionAlbums;



@property int16_t totalCompanionAlbumsValue;
- (int16_t)totalCompanionAlbumsValue;
- (void)setTotalCompanionAlbumsValue:(int16_t)value_;

//- (BOOL)validateTotalCompanionAlbums:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* totalTracks;



@property int16_t totalTracksValue;
- (int16_t)totalTracksValue;
- (void)setTotalTracksValue:(int16_t)value_;

//- (BOOL)validateTotalTracks:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* type;



//- (BOOL)validateType:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *tracks;

- (NSMutableSet*)tracksSet;





@end

@interface _DSYAlbum (CoreDataGeneratedAccessors)

- (void)addTracks:(NSSet*)value_;
- (void)removeTracks:(NSSet*)value_;
- (void)addTracksObject:(DSYTrack*)value_;
- (void)removeTracksObject:(DSYTrack*)value_;

@end

@interface _DSYAlbum (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveArtistDisplayName;
- (void)setPrimitiveArtistDisplayName:(NSString*)value;




- (NSNumber*)primitiveCanonical;
- (void)setPrimitiveCanonical:(NSNumber*)value;

- (BOOL)primitiveCanonicalValue;
- (void)setPrimitiveCanonicalValue:(BOOL)value_;




- (NSNumber*)primitiveDuration;
- (void)setPrimitiveDuration:(NSNumber*)value;

- (int32_t)primitiveDurationValue;
- (void)setPrimitiveDurationValue:(int32_t)value_;




- (NSNumber*)primitiveEditedVersion;
- (void)setPrimitiveEditedVersion:(NSNumber*)value;

- (BOOL)primitiveEditedVersionValue;
- (void)setPrimitiveEditedVersionValue:(BOOL)value_;




- (NSNumber*)primitiveEssential;
- (void)setPrimitiveEssential:(NSNumber*)value;

- (BOOL)primitiveEssentialValue;
- (void)setPrimitiveEssentialValue:(BOOL)value_;




- (NSString*)primitiveId;
- (void)setPrimitiveId:(NSString*)value;




- (NSNumber*)primitiveParentalAdvisory;
- (void)setPrimitiveParentalAdvisory:(NSNumber*)value;

- (BOOL)primitiveParentalAdvisoryValue;
- (void)setPrimitiveParentalAdvisoryValue:(BOOL)value_;




- (NSNumber*)primitivePopularity;
- (void)setPrimitivePopularity:(NSNumber*)value;

- (int32_t)primitivePopularityValue;
- (void)setPrimitivePopularityValue:(int32_t)value_;




- (NSNumber*)primitiveRating;
- (void)setPrimitiveRating:(NSNumber*)value;

- (int16_t)primitiveRatingValue;
- (void)setPrimitiveRatingValue:(int16_t)value_;




- (NSDate*)primitiveReleaseDate;
- (void)setPrimitiveReleaseDate:(NSDate*)value;




- (NSString*)primitiveReleaseFormat;
- (void)setPrimitiveReleaseFormat:(NSString*)value;




- (NSNumber*)primitiveStreamable;
- (void)setPrimitiveStreamable:(NSNumber*)value;

- (BOOL)primitiveStreamableValue;
- (void)setPrimitiveStreamableValue:(BOOL)value_;




- (NSString*)primitiveTitle;
- (void)setPrimitiveTitle:(NSString*)value;




- (NSNumber*)primitiveTotalCompanionAlbums;
- (void)setPrimitiveTotalCompanionAlbums:(NSNumber*)value;

- (int16_t)primitiveTotalCompanionAlbumsValue;
- (void)setPrimitiveTotalCompanionAlbumsValue:(int16_t)value_;




- (NSNumber*)primitiveTotalTracks;
- (void)setPrimitiveTotalTracks:(NSNumber*)value;

- (int16_t)primitiveTotalTracksValue;
- (void)setPrimitiveTotalTracksValue:(int16_t)value_;




- (NSString*)primitiveType;
- (void)setPrimitiveType:(NSString*)value;





- (NSMutableSet*)primitiveTracks;
- (void)setPrimitiveTracks:(NSMutableSet*)value;


@end
