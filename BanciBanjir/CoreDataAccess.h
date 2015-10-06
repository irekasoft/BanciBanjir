//
//  CoreDataAccess.h
//  BanciBanjir
//
//  Created by Hijazi on 5/10/15.
//  Copyright © 2015 iReka Soft. All rights reserved.
//
// if android database access object


#import <Foundation/Foundation.h>
@import CoreData;

@interface CoreDataAccess : NSObject

+ (CoreDataAccess*)sharedInstance;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
