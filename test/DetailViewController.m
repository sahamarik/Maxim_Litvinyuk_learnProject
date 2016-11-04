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
    NSString *firstNameOfEmployee = self.employee.firstName;
    int sal = _employee.salary;
    NSDate *birthDayOfEmployee = self.employee.dateOfBirth;
    self.title = self.employee.fullName;
    self.detailLabel.text = [NSString stringWithFormat:@"%@`s salary is - %d", firstNameOfEmployee, sal];
    self.BirthDayLabel.text = [NSString stringWithFormat:@"Birth day - %@",birthDayOfEmployee];
}

@end
