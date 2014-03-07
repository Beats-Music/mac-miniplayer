//
//  NSManagedObject+Import.m
//  Core Data Utilities
//
//  Created by Syed Haris Ali on 11/9/13.
//  Copyright (c) 2013 Syed Haris Ali. All rights reserved.
//

#import "NSManagedObject+Import.h"

@implementation NSManagedObject (Import)

#pragma mark - Class
+(NSManagedObject *)createObjectFromDictionary:(NSDictionary *)dictionary
                                    withUpdate:(void (^)(NSManagedObject *, NSDictionary *, NSManagedObjectContext *))update
                                     inContext:(NSManagedObjectContext *)context {
  NSManagedObject *object = [self.class MR_createInContext:context];
  update( object, dictionary, context );
  return object;
}

#pragma mark - Import Helpers
+(NSArray*)importObjects:(NSArray*)objects
               inContext:(NSManagedObjectContext*)context
         usingEntityName:(NSString*)entityName
            onPrimaryKey:(NSString*)primaryKey
              withUpdate:(void(^)(NSManagedObject*object,NSDictionary*info,NSManagedObjectContext*context))update {
  
  if(!objects) {
    return nil;
  }
  if(![objects isKindOfClass:NSArray.class]) {
    return nil;
  }
  if([objects count]==0) {
    return nil;
  }
  
  NSSortDescriptor *numericalSortDescriptor = [NSSortDescriptor sortDescriptorWithKey:primaryKey
                                                                            ascending:YES
                                                                           comparator:^NSComparisonResult(id obj1, id obj2) {
    if ([obj1 integerValue] > [obj2 integerValue]) {
      return (NSComparisonResult)NSOrderedDescending;
    }
    if ([obj1 integerValue] < [obj2 integerValue]) {
      return (NSComparisonResult)NSOrderedAscending;
    }
    return (NSComparisonResult)NSOrderedSame;
  }];
  
  NSArray *sortedObjectsToImport = [objects sortedArrayUsingDescriptors:[NSArray arrayWithObject:numericalSortDescriptor]];
  NSArray *sortedObjectIds       = [sortedObjectsToImport valueForKey:primaryKey];
  NSArray *objectsMatching       = [NSManagedObject selectObjectsWithIDs:sortedObjectIds
                                                         usingEntityName:entityName
                                                            onPrimaryKey:primaryKey
                                                               inContext:context
                                                withInputSortDescriptors:nil
                                                andOutputSortDescriptors:@[numericalSortDescriptor]];
  
  // Go through the array of object ids, object dictionaries, and local objects and create only what you must and update the rest
  NSMutableArray *cachedObjects  = [NSMutableArray arrayWithCapacity:objects.count];
  NSInteger      indexOfObjectId = 0;
  NSInteger      indexOfObject   = 0;
  NSInteger      totalObjectIds  = sortedObjectIds.count;
  NSInteger      totalObjects    = objectsMatching.count;
  BOOL           finished        = NO;
  BOOL           foundObjects    = objectsMatching.count ? YES : NO;
  
  // Iterate through the object ids
  while (!finished) {
    
    // Get the next object id
    NSString        *object_id   = [sortedObjectIds       objectAtIndex:indexOfObjectId];
    NSDictionary    *object_info = [sortedObjectsToImport objectAtIndex:indexOfObjectId];
    NSManagedObject *object      = nil;
    
    // If we had any local matches let's also get the next object in line
    if(foundObjects) {
      if(indexOfObject < totalObjects) {
        object = [objectsMatching objectAtIndex:indexOfObject];
      }
    }
    
    // If there's no next object in line to compare to then import this next object_id
    if(!object) {
      
      // Create a new object for this id (this array is in the same sort order as the array of dictionaries returned)
      object = [self createObjectFromDictionary:object_info
                                     withUpdate:update
                                      inContext:context];
      
      // Add it to the cached objects
      [cachedObjects addObject:object];
      
    }
    
    // If there is a object then we perform the compare
    else {
      
      // See if this current object id is equal to the object's id
      if([[NSString stringWithFormat:@"%@",object_id] isEqualToString:[object valueForKey:primaryKey]]) {
        
        // If so then update the object and increment the object index
        update(object,object_info,context);
        
        // Add it to the cached objects
        [cachedObjects addObject:object];
        
        // increment the index so next iteration we use the next object in line
        indexOfObject++;
        
      }
      
      else {
        
        // Create a new object for this id (this array is in the same sort order as the array of dictionaries returned)
        object = [self createObjectFromDictionary:object_info
                                       withUpdate:update
                                        inContext:context];
        
        // Add it to the cached objects
        [cachedObjects addObject:object];
        
      }
      
    }
    
    // Increment the object id and make sure we haven't reached the end
    if(indexOfObjectId == (totalObjectIds-1)) {
      finished = YES;
    }
    else {
      indexOfObjectId++;
    }
    
  }
  
  // Return the cached objects
  return cachedObjects;
}

+(NSArray *)selectObjectsWithIDs:(NSArray *)objectIDs
                 usingEntityName:(NSString*)entityName
                    onPrimaryKey:(NSString*)primaryKey
                       inContext:(NSManagedObjectContext*)context
        withInputSortDescriptors:(NSArray*)inputSortDescriptors
        andOutputSortDescriptors:(NSArray*)outputSortDescriptors {
  if(inputSortDescriptors) {
    objectIDs = [objectIDs sortedArrayUsingDescriptors:inputSortDescriptors];
  }
  NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
  [fetchRequest setEntity:[NSEntityDescription entityForName:entityName
                                      inManagedObjectContext:context]];
  [fetchRequest setPredicate:[NSPredicate predicateWithFormat:@"(%K IN %@)",primaryKey,objectIDs]];
  // Execute the fetch.
  NSError *error;
  NSArray *fetchedObjects = [context executeFetchRequest:fetchRequest error:&error];
  if(outputSortDescriptors) {
    return [fetchedObjects sortedArrayUsingDescriptors:outputSortDescriptors];
  }
  else {
    return fetchedObjects;
  }
}

#pragma mark - Instance
-(void)importObjectForKeyIfExists:(NSString*)key
                       fromObject:(NSDictionary*)object {
  id value = [object objectForKeyOrNil:key];
  if( !value ){
    return;
  }
  else {
    [self willChangeValueForKey:key];
    [self setValue:value forKey:key];
    [self didChangeValueForKey:key];
  }
}

-(void)importObjectForKeyIfExistsAsString:(NSString*)key
                               fromObject:(NSDictionary*)object {
  id value = [object objectForKeyOrNilAsString:key];
  if( !value ){
    return;
  }
  else {
    [self willChangeValueForKey:key];
    [self setValue:value forKey:key];
    [self didChangeValueForKey:key];
  }
}

-(void)updateWithDictionary:(NSDictionary *)info {
  // Override in subclasses
}

@end
