//
//  DetailViewController.h
//  BanciBanjir
//
//  Created by Hijazi on 4/10/15.
//  Copyright © 2015 iReka Soft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Event.h"

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;
@property (strong, nonatomic) Event *event;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UITextView *tv_desc;

@end

