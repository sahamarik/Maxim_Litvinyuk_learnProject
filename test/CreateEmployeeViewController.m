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
#import "HSDatePickerViewController.h"

@interface CreateEmployeeViewController()

@property (strong, nonatomic)NSDate *birthDay;

@end

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
        self.createEmployee.dateOfBirth = self.birthDay;
        
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

- (IBAction)addBirthDate:(UIButton *)sender
{
    HSDatePickerViewController *hsdpvc = [[HSDatePickerViewController alloc] init];
    hsdpvc.delegate = self;
    
    [self presentViewController:hsdpvc animated:YES completion:nil];
}

- (void)hsDatePickerPickedDate:(NSDate *)date;
{
    self.birthDay = date;
}

@end
