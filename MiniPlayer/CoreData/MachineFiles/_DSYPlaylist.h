// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DSYPlaylist.h instead.

#import <CoreData/CoreData.h>


extern const struct DSYPlaylistAttributes {
	__unsafe_unretained NSString *access;
	__unsafe_unretained NSString *created_at;
	__unsafe_unretained NSString *desc;
	__unsafe_unretained NSString *duration;
	__unsafe_unretained NSString *id;
	__unsafe_unretained NSString *name;
	__unsafe_unretained NSString *parental_advisory;
	__unsafe_unretained NSString *totalSubscribers;
	__unsafe_unretained NSString *totalTracks;
	__unsafe_unretained NSString *type;
	__unsafe_unretained NSString *updatedAt;
	__unsafe_unretained NSString *userDisplayName;
} DSYPlaylistAttributes;

extern const struct DSYPlaylistRelationships {
} DSYPlaylistRelationships;

extern const struct DSYPlaylistFetchedProperties {
} DSYPlaylistFetchedProperties;















@interface DSYPlaylistID : NSManagedObjectID {}
@end

@interface _DSYPlaylist : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (DSYPlaylistID*)objectID;





@property (nonatomic, strong) NSString* access;



//- (BOOL)validateAccess:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* created_at;



//- (BOOL)validateCreated_at:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* desc;



//- (BOOL)validateDesc:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* duration;



@property int16_t durationValue;
- (int16_t)durationValue;
- (void)setDurationValue:(int16_t)value_;

//- (BOOL)validateDuration:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* id;



//- (BOOL)validateId:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* name;



//- (BOOL)validateName:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* parental_advisory;



@property int16_t parental_advisoryValue;
- (int16_t)parental_advisoryValue;
- (void)setParental_advisoryValue:(int16_t)value_;

//- (BOOL)validateParental_advisory:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* totalSubscribers;



@property int32_t totalSubscribersValue;
- (int32_t)totalSubscribersValue;
- (void)setTotalSubscribersValue:(int32_t)value_;

//- (BOOL)validateTotalSubscribers:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSNumber* totalTracks;



@property int16_t totalTracksValue;
- (int16_t)totalTracksValue;
- (void)setTotalTracksValue:(int16_t)value_;

//- (BOOL)validateTotalTracks:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* type;



//- (BOOL)validateType:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSDate* updatedAt;



//- (BOOL)validateUpdatedAt:(id*)value_ error:(NSError**)error_;





@property (nonatomic, strong) NSString* userDisplayName;



//- (BOOL)validateUserDisplayName:(id*)value_ error:(NSError**)error_;






@end

@interface _DSYPlaylist (CoreDataGeneratedAccessors)

@end

@interface _DSYPlaylist (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveAccess;
- (void)setPrimitiveAccess:(NSString*)value;




- (NSDate*)primitiveCreated_at;
- (void)setPrimitiveCreated_at:(NSDate*)value;




- (NSString*)primitiveDesc;
- (void)setPrimitiveDesc:(NSString*)value;




- (NSNumber*)primitiveDuration;
- (void)setPrimitiveDuration:(NSNumber*)value;

- (int16_t)primitiveDurationValue;
- (void)setPrimitiveDurationValue:(int16_t)value_;




- (NSString*)primitiveId;
- (void)setPrimitiveId:(NSString*)value;




- (NSString*)primitiveName;
- (void)setPrimitiveName:(NSString*)value;




- (NSNumber*)primitiveParental_advisory;
- (void)setPrimitiveParental_advisory:(NSNumber*)value;

- (int16_t)primitiveParental_advisoryValue;
- (void)setPrimitiveParental_advisoryValue:(int16_t)value_;




- (NSNumber*)primitiveTotalSubscribers;
- (void)setPrimitiveTotalSubscribers:(NSNumber*)value;

- (int32_t)primitiveTotalSubscribersValue;
- (void)setPrimitiveTotalSubscribersValue:(int32_t)value_;




- (NSNumber*)primitiveTotalTracks;
- (void)setPrimitiveTotalTracks:(NSNumber*)value;

- (int16_t)primitiveTotalTracksValue;
- (void)setPrimitiveTotalTracksValue:(int16_t)value_;




- (NSString*)primitiveType;
- (void)setPrimitiveType:(NSString*)value;




- (NSDate*)primitiveUpdatedAt;
- (void)setPrimitiveUpdatedAt:(NSDate*)value;




- (NSString*)primitiveUserDisplayName;
- (void)setPrimitiveUserDisplayName:(NSString*)value;




@end
