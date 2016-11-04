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
#import "MasterViewController.h"
#import "AppDelegate.h"




int main(int argc, char * argv[]) {
    
    
//ORGANISATION
    
//    - (id)initWithName:(NSString *)organisationName;
//    - (void)addEmployeeWithName:(NSString *)employeesName;
//    - (int)calculateAverageSalary;
//    - (Employee *)employeeWithLowestSalary;
//    - (NSMutableArray *)employeesWithSalary:(int)salaryOfEmployee;
//    - (void)removeEmployee:(Employee *)employee;
//
//    - (instancetype)initWithName:(NSString *)organisationName
//    {
//        self = [super init];
//        if (self)
//        {
//            self.employees = [NSObject new]; // написать свой инициализатор
//            self.name = organisationName;
//        }
//        
//        return self;
//    }
//    
//    // Method create new object Employee`s class and put in array Organisation`s array
//    // this method uses Employee`s class constructor
//    - (void)addEmployeeWithName:(NSString *)employeesName //andLastName:(NSString *)employeesLastName
//    {
//        int employeesSalary = ((arc4random_uniform(490) + 10) * 10);
//        
//        NSArray *empName = [employeesName componentsSeparatedByString:@" "];
//        
//        Employee *myEmp =[[Employee alloc] initWithFirstName:empName[0] lastName:empName[1] salary:employeesSalary];
//        
//        NSMutableArray *mutableArray = [self.employees mutableCopy];
//        [mutableArray addObject:myEmp];
//        
//        self.employees = [mutableArray copy];
//    }
//    
//    // Method calculate average property "salary" of all emlployees array
//    - (int)calculateAverageSalary
//    {
//        NSNumber *average = [self.employees valueForKeyPath:@"@avg.salary"];
//        
//        return average.intValue;
//    }
//    
//    // Method iterate array employees and return element with lowest property - salary
//    - (Employee *)employeeWithLowestSalary              //нужно вернуть 1 объект класса Employee
//    {
//        int lowestSalary = INT_MAX;
//        Employee *lowestSalariedEmployee;
//        for (Employee *employee in self.employees)
//        {
//            if (employee.salary < lowestSalary )
//            {
//                lowestSalary = employee.salary;
//                lowestSalariedEmployee = employee;
//            }
//        }
//        return lowestSalariedEmployee;
//    }
//    
//    //Checking Employees with selected salary
//    - (NSMutableArray *)employeesWithSalary:(int)salaryOfEmployee
//    {
//        NSMutableArray *arrayWithEmployeesSalary = [NSMutableArray array];
//        
//        //цикл в котором будут прощитываться елементы массива employees и добавляться в массив выше
//        
//        for (Employee *employee in self.employees)
//        {
//            if (employee.salary == salaryOfEmployee)
//            {
//                [arrayWithEmployeesSalary addObject:employee];
//            }
//        }
//        
//        return arrayWithEmployeesSalary;
//    }
//    
//    - (void)removeEmployee:(Employee *)employee
//    {
//        NSMutableArray *mutableArrayDel = [self.employees mutableCopy];
//        [mutableArrayDel removeObject:employee];
//        self.employees = [mutableArrayDel copy];
//    }
//    
//    - (NSString *)description
//    {
//        return [NSString stringWithFormat:@"%@", self.name];
//    }

    
    
    
    
 //EMPLOYEE
 
//    - (id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName salary:(int)salary;
//    - (id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName salary:(int)salary
//    {
//        self = [super init];
//        if (self)
//        {
//            self.firstName = firstName;
//            self.lastName = lastName;
//            self.salary = salary;
//        }
//        
//        return self;
//    }
//    
//    - (NSString *)fullName
//    {
//        return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
//    }
//    
//    - (NSString *)description
//    {
//        return [NSString stringWithFormat:@"%@ %@ %d", self.firstName, self.lastName, self.salary];
//    }

    
    
    
    
    
    
    
    
//    Organisation *newOrg = [[Organisation alloc]initWithName:@"Evil-corp"];
//    [newOrg addEmployeeWithName:@"Bob Lob"];
//    [newOrg addEmployeeWithName:@"Max Pars"];
//    [newOrg addEmployeeWithName:@"Kot Var"];
//    [newOrg addEmployeeWithName:@"Lamp Gas"];
//    [newOrg addEmployeeWithName:@"Tor Lor"];
//    
//    Employee *newEmp = [[Employee alloc] initWithFirstName:@"Lara" lastName:@"Qwerty" salary:500];
//    
//    NSLog(@"Company`s name is %@", newOrg.name);
//    
//    NSLog(@"Full name of new Employee is - %@", newEmp.fullName);
//    
//    NSLog(@"Average employees salary is - %d\n", [newOrg calculateAverageSalary]);
//    
//    NSLog(@"Employees with lowest salary - %@\n", [newOrg employeeWithLowestSalary]);
//    
//    NSLog(@"Employee with selected salary - %@\n", [newOrg employeesWithSalary:1000]);
//   
//    [newOrg employeeWithLowestSalary];
//    
//    Employee *emp1 = [[Employee alloc] init];
//    
//    emp1 = [newOrg employeeWithLowestSalary];
//    
//    [newOrg removeEmployee: emp1];
//    
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
