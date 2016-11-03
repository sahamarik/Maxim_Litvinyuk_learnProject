//
//  MasterViewController.h
//  test
//
//  Created by Max on 17.10.16.
//  Copyright © 2016 Max. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CreateEmployeeViewController.h"
#import "Organisation.h"

@class Organisation;
@class Employee;

@interface MasterViewController : UITableViewController <PassingEmployee>

@property (weak, nonatomic) IBOutlet UILabel *employeeLabel;
@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end
