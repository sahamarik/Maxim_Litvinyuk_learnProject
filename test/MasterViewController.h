//
//  MasterViewController.h
//  test
//
//  Created by Max on 17.10.16.
//  Copyright © 2016 Max. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Organisation.h"
#import "Employee.h"

@interface MasterViewController : UITableViewController <UITableViewDataSource, UITableViewDelegate>

//@property(strong, nonatomic) NSMutableArray *employeesArray;
@property (weak, nonatomic) IBOutlet UILabel *employeeLabel;

@property (strong, nonatomic) IBOutlet UITableView *myTableView;
@end
