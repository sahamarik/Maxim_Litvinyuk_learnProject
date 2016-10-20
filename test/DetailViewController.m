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
    NSString *firstNameOfEmployee = _employee.firstName;
    int sal = _employee.salary;
    
    self.title = self.employee.fullName;
    self.detailLabel.text = [NSString stringWithFormat:@"%@`s salary is - %d", firstNameOfEmployee, sal];
}

@end
