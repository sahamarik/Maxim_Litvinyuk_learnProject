//
//  Organisation.m
//  test
//
//  Created by Max on 05.10.16.
//  Copyright © 2016 Max. All rights reserved.
//

#import "Organisation.h"
#import "Employee.h"

@implementation Organisation (Logic)

// Method create new object Employee`s class and put in array Organisation`s array
- (void)addEmployeeWithName:(NSString *)employeesName //andLastName:(NSString *)employeesLastName
{
    int employeesSalary = ((arc4random_uniform(490) + 10) * 10);
 
    NSArray *empName = [employeesName componentsSeparatedByString:@" "];

    Employee *myEmp =[[Employee alloc] initWithFirstName:empName[0] lastName:empName[1] salary:employeesSalary];

    NSMutableArray *mutableArray = [self.employee mutableCopy];
    [mutableArray addObject:myEmp];
    
    self.employee = [mutableArray copy];
}

// Method calculate average property "salary" of all emlployees array
- (int)calculateAverageSalary
{
    NSNumber *average = [self.employee valueForKeyPath:@"@avg.salary"];
   
    return average.intValue;
}

// Method iterate array employees and return element with lowest property - salary
- (Employee *)employeeWithLowestSalary
{
    int lowestSalary = INT_MAX;
    Employee *lowestSalariedEmployee;
    for (Employee *employee in self.employee)
    {
        if (employee.salary < lowestSalary )
        {
            lowestSalary = employee.salary;
            lowestSalariedEmployee = employee;
        }
    }
    return lowestSalariedEmployee;
}

//Checking Employees with selected salary
- (NSMutableArray *)employeesWithSalary:(int)salaryOfEmployee
{
    NSMutableArray *arrayWithEmployeesSalary = [NSMutableArray array];
    
    for (Employee *employee in self.employee)
    {
        if (employee.salary == salaryOfEmployee)
        {
            [arrayWithEmployeesSalary addObject:employee];
        }
    }
    
    return arrayWithEmployeesSalary;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", self.name];
}

@end
