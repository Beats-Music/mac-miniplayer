// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DSYTrack.h instead.

#import <CoreData/CoreData.h>


extern const struct DSYTrackAttributes {
	__unsafe_unretained NSString *artistDisplayName;
	__unsafe_unretained NSString *discNumber;
	__unsafe_unretained NSString *duration;
	__unsafe_unretained NSString *editedVersion;
	__unsafe_unretained NSString *id;
	__unsafe_unretained NSString *parentalAdvisory;
	__unsafe_unretained NSString *popularity;
	__unsafe_unretained NSString *releaseDate;
	__unsafe_unretained NSString *streamable;
	__unsafe_unretained NSString *title;
	__unsafe_unretained NSString *trackPosition;
	__unsafe_unretained NSString *type;
} DSYTrackAttributes;

extern const struct DSYTrackRelationships {
	__unsafe_unretained NSString *albums;
} DSYTrackRelationships;

extern const struct DSYTrackFetchedProperties {
} DSYTrackFetchedProperties;

@class DSYAlbum;














@interface DSYTrackID : NSManagedObjectID {}
@end

@interface _DSYTrack : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (DSYTrackID*)objectID;





@property (nonatomic, strong) NSString* artistDisplayName;



//- (BOOL)validateArtistDisplayName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* discNumber;



@property int16_t discNumberValue;
- (int16_t)discNumberValue;
- (void)setDiscNumberValue:(int16_t)value_;

//- (BOOL)validateDiscNumber:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* duration;



@property int16_t durationValue;
- (int16_t)durationValue;
- (void)setDurationValue:(int16_t)value_;

//- (BOOL)validateDuration:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* editedVersion;



@property int16_t editedVersionValue;
- (int16_t)editedVersionValue;
- (void)setEditedVersionValue:(int16_t)value_;

//- (BOOL)validateEditedVersion:(id*)value_ error:(NSError**)error_;





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





@property (nonatomic, strong) NSDate* releaseDate;



//- (BOOL)validateReleaseDate:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* streamable;



@property BOOL streamableValue;
- (BOOL)streamableValue;
- (void)setStreamableValue:(BOOL)value_;

//- (BOOL)validateStreamable:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* title;



//- (BOOL)validateTitle:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* trackPosition;



@property int16_t trackPositionValue;
- (int16_t)trackPositionValue;
- (void)setTrackPositionValue:(int16_t)value_;

//- (BOOL)validateTrackPosition:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* type;



//- (BOOL)validateType:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSSet *albums;

- (NSMutableSet*)albumsSet;





@end

@interface _DSYTrack (CoreDataGeneratedAccessors)

- (void)addAlbums:(NSSet*)value_;
- (void)removeAlbums:(NSSet*)value_;
- (void)addAlbumsObject:(DSYAlbum*)value_;
- (void)removeAlbumsObject:(DSYAlbum*)value_;

@end

@interface _DSYTrack (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveArtistDisplayName;
- (void)setPrimitiveArtistDisplayName:(NSString*)value;




- (NSNumber*)primitiveDiscNumber;
- (void)setPrimitiveDiscNumber:(NSNumber*)value;

- (int16_t)primitiveDiscNumberValue;
- (void)setPrimitiveDiscNumberValue:(int16_t)value_;




- (NSNumber*)primitiveDuration;
- (void)setPrimitiveDuration:(NSNumber*)value;

- (int16_t)primitiveDurationValue;
- (void)setPrimitiveDurationValue:(int16_t)value_;




- (NSNumber*)primitiveEditedVersion;
- (void)setPrimitiveEditedVersion:(NSNumber*)value;

- (int16_t)primitiveEditedVersionValue;
- (void)setPrimitiveEditedVersionValue:(int16_t)value_;




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




- (NSDate*)primitiveReleaseDate;
- (void)setPrimitiveReleaseDate:(NSDate*)value;




- (NSNumber*)primitiveStreamable;
- (void)setPrimitiveStreamable:(NSNumber*)value;

- (BOOL)primitiveStreamableValue;
- (void)setPrimitiveStreamableValue:(BOOL)value_;




- (NSString*)primitiveTitle;
- (void)setPrimitiveTitle:(NSString*)value;




- (NSNumber*)primitiveTrackPosition;
- (void)setPrimitiveTrackPosition:(NSNumber*)value;

- (int16_t)primitiveTrackPositionValue;
- (void)setPrimitiveTrackPositionValue:(int16_t)value_;




- (NSString*)primitiveType;
- (void)setPrimitiveType:(NSString*)value;





- (NSMutableSet*)primitiveAlbums;
- (void)setPrimitiveAlbums:(NSMutableSet*)value;


@end
