// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to DSYUser.h instead.

#import <CoreData/CoreData.h>


extern const struct DSYUserAttributes {
	__unsafe_unretained NSString *id;
} DSYUserAttributes;

extern const struct DSYUserRelationships {
} DSYUserRelationships;

extern const struct DSYUserFetchedProperties {
} DSYUserFetchedProperties;




@interface DSYUserID : NSManagedObjectID {}
@end

@interface _DSYUser : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
- (DSYUserID*)objectID;





@property (nonatomic, strong) NSString* id;



//- (BOOL)validateId:(id*)value_ error:(NSError**)error_;






@end

@interface _DSYUser (CoreDataGeneratedAccessors)

@end

@interface _DSYUser (CoreDataGeneratedPrimitiveAccessors)


- (NSString*)primitiveId;
- (void)setPrimitiveId:(NSString*)value;




@end
