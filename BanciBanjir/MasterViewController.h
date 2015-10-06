//
//  MasterViewController.h
//  BanciBanjir
//
//  Created by Hijazi on 4/10/15.
//  Copyright © 2015 iReka Soft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataInputVC.h"

@import CoreData;

@class DetailViewController;

@interface MasterViewController : UITableViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) DetailViewController *detailViewController;

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;


@end

