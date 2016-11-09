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

@property (strong, nonatomic) NSDate *birthday;

@end

@implementation CreateEmployeeViewController 

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)saveEditing:(UIButton *)sender
{
    if ((self.firstNameTextField.text.length > 0) && (self.lastNameTextField.text.length > 0) && (self.salaryTextField.text.length > 0) && (self.birthday != nil))
    {
        Employee *newEmployee = [NSEntityDescription insertNewObjectForEntityForName:@"Employee" inManagedObjectContext:[DatabaseController sharedInstance].context];
        
        newEmployee.firstName = self.firstNameTextField.text;
        newEmployee.lastName = self.lastNameTextField.text;
        newEmployee.salary = self.salaryTextField.text.intValue;
        newEmployee.dateOfBirth = self.birthday;
        newEmployee.order = self.employeeWithLastOrder.order + 1;
        [DatabaseController saveContext];
        
        [self.delegate sendEmployee:newEmployee];
        [self.navigationController popViewControllerAnimated:true];
    }
    else
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:@"Incorrect data" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
        [alert show];
    }
}

- (IBAction)addBirthday:(UIButton *)sender
{
    HSDatePickerViewController *dataPicker = [HSDatePickerViewController new];
    dataPicker.delegate = self;
    
    [self presentViewController:dataPicker animated:true completion:nil];
}

- (void)hsDatePickerPickedDate:(NSDate *)date;
{
    self.birthday = date;
}

@end
