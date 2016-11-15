//
//  DetailViewController.m
//  test
//
//  Created by Max on 20.10.16.
//  Copyright © 2016 Max. All rights reserved.
//

#import "DetailViewController.h"
#import "Employee.h"
#import "Organisation.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = self.employee.fullName;
    self.detailLabel.text = [NSString stringWithFormat:@"%@`s salary is - %d", self.employee.firstName, self.employee.salary];
    self.BirthdayLabel.text = [NSString stringWithFormat:@"Birthday - %@", self.employee.dateOfBirth];
    self.orderOfEmployeeLabel.text = [NSString stringWithFormat:@"Employee order is - %d", self.employee.order];
    self.isActiveEmployeeLabel.text = [NSString stringWithFormat:@"Employee is active - %d", self.employee.isActive];
}

@end
