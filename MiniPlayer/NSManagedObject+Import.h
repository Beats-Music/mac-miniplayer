//
//  NSManagedObject+Import.h
//  Core Data Utilities
//
//  Created by Syed Haris Ali on 11/9/13.
//  Copyright (c) 2013 Syed Haris Ali. All rights reserved.
//

#import <CoreData/CoreData.h>

#import "NSDictionary+ObjectForKeyOrNil.h"

@interface NSManagedObject (Import)

/**
 @brief	An update block that an NSManagedObject is expected to implement when importing data using the batch import function
 */
typedef void (^UpdateBlock)(NSManagedObject*object,NSDictionary*info,NSManagedObjectContext*context);

#pragma mark - Class

+(NSManagedObject*)createObjectFromDictionary:(NSDictionary*)dictionary
                                   withUpdate:(UpdateBlock)update
                                    inContext:(NSManagedObjectContext*)context;

+(NSArray*)importObjects:(NSArray*)objects
               inContext:(NSManagedObjectContext*)context
         usingEntityName:(NSString*)entityName
            onPrimaryKey:(NSString*)primaryKey
              withUpdate:(UpdateBlock)update;

+(NSArray *)selectObjectsWithIDs:(NSArray *)objectIDs
                 usingEntityName:(NSString*)entityName
                    onPrimaryKey:(NSString*)primaryKey
                       inContext:(NSManagedObjectContext*)context
        withInputSortDescriptors:(NSArray*)inputSortDescriptors
        andOutputSortDescriptors:(NSArray*)outputSortDescriptors;

#pragma mark - Instance
-(void)importObjectForKeyIfExists:(NSString*)key
                       fromObject:(NSDictionary*)object;

-(void)importObjectForKeyIfExistsAsString:(NSString*)key
                               fromObject:(NSDictionary*)object;

-(void)updateWithDictionary:(NSDictionary *)info;

@end
