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

@property (weak, nonatomic)NSString *fName;
@property (weak, nonatomic)NSString *lName;
@property int salaryOfEmployee;
@property (strong, nonatomic) Employee *createEmployee;

@end

@implementation CreateEmployeeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.firstNameLabel.text = @"Add employee`s name:";
    self.lastNameLabel.text = @"Add employee`s last name:";
    self.salaryLabel.text = @"Add employee`s salary";
}

- (IBAction)saveEditing:(UIButton *)sender
{
    self.fName = self.firstNameTextField.text;
    self.lName = self.lastNameTextField.text;
    self.salaryOfEmployee = [self.salaryTextField.text intValue];
    self.createEmployee = [[Employee alloc] initWithFirstName:self.fName lastName:self.lName salary:self.salaryOfEmployee];
    
    [self.delegate sendEmployee:self.createEmployee];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
