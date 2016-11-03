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
#import "DatabaseController.h"

@implementation CreateEmployeeViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)saveEditing:(UIButton *)sender
{
  
    if ((self.firstNameTextField.text.length > 0) && (self.lastNameTextField.text.length > 0) && ((self.salaryTextField.text.length > 0) && (([self.salaryTextField.text intValue] / 1))))
    {
        self.createEmployee = [NSEntityDescription insertNewObjectForEntityForName:@"Employee" inManagedObjectContext:[DatabaseController sharedInstance].context];
        
        self.createEmployee.firstName = self.firstNameTextField.text;
        self.createEmployee.lastName = self.lastNameTextField.text;
        self.createEmployee.salary = [self.salaryTextField.text intValue];
        
        [DatabaseController saveContext];
        
        [self.delegate sendEmployee:self.createEmployee];
    }
    else
    {
        UIAlertView *alert = [ [UIAlertView alloc]
                              initWithTitle:@"Error"
                              message:@"Incorrect data"
                              delegate:nil
                              cancelButtonTitle:@"OK"
                              otherButtonTitles:nil];
        [alert show];
    }
    [self.navigationController popViewControllerAnimated:true];
}

@end
