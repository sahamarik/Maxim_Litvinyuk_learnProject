//
//  CreateEmployeeViewController.m
//  test
//
//  Created by Max on 20.10.16.
//  Copyright © 2016 Max. All rights reserved.
//

#import "CreateEmployeeViewController.h"
#import "MasterViewController.h"
#import "Employee.h"

@interface CreateEmployeeViewController ()


@property (strong, nonatomic) Employee *createEmployee;

@end

@implementation CreateEmployeeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)saveEditing:(UIButton *)sender
{
    self.createEmployee = [[Employee alloc] initWithFirstName:self.firstNameTextField.text lastName:self.lastNameTextField.text salary:[self.salaryTextField.text intValue]];
    
    [self.delegate sendEmployee:self.createEmployee];
    [self.navigationController popViewControllerAnimated:true];
}

@end
