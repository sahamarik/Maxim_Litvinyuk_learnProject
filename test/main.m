//
//  main.m
//  test
//
//  Created by Max on 10/5/16.
//  Copyright © 2016 Max. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Employee.h"
#import "Organisation.h"




int main(int argc, char * argv[]) {
    
    
    Organisation *newOrg = [[Organisation alloc]initWithName:@"Evil-corp"];
    [newOrg addEmployeeWithName:@"Bob Lob"];
    [newOrg addEmployeeWithName:@"Max Pars"];
    [newOrg addEmployeeWithName:@"Kot Var"];
    [newOrg addEmployeeWithName:@"Lamp Gas"];
    [newOrg addEmployeeWithName:@"Tor Lor"];
    
    Employee *newEmp = [[Employee alloc] initWithFirstName:@"Lara" lastName:@"Qwerty" salary:500];
    
    NSLog(@"Company`s name is %@", newOrg.name);
    
    NSLog(@"Full name of new Employee is - %@", newEmp.fullName);
    
    NSLog(@"Average employees salary is - %d\n", [newOrg calculateAverageSalary]);
    
    NSLog(@"Employees with lowest salary - %@\n", [newOrg employeeWithLowestSalary]);
    
    NSLog(@"Employee with selected salary - %@\n", [newOrg employeesWithSalary:1000]);
    
    
    
    
    
    
     
    
   
    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
