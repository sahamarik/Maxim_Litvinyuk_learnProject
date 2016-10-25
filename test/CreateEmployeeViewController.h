//
//  CreateEmployeeViewController.h
//  test
//
//  Created by Max on 20.10.16.
//  Copyright © 2016 Max. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Employee.h"


@protocol passingEmployee <NSObject>

- (void) sendEmployee:(Employee *)createEmployee;

@end

@interface CreateEmployeeViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *firstNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *firstNameTextField;
@property (weak, nonatomic) IBOutlet UILabel *lastNameLabel;
@property (weak, nonatomic) IBOutlet UITextField *lastNameTextField;
@property (weak, nonatomic) IBOutlet UILabel *salaryLabel;
@property (weak, nonatomic) IBOutlet UITextField *salaryTextField;
@property (weak, nonatomic) id<passingEmployee> delegate;

- (IBAction)saveEditing:(UIButton *)sender;

@end
