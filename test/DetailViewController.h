//
//  DetailViewController.h
//  test
//
//  Created by Max on 20.10.16.
//  Copyright © 2016 Max. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Employee.h"

@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *detailLabel;
@property (weak, nonatomic) Employee *employee;

@end
