//
//  Organisation.m
//  test
//
//  Created by Max on 05.10.16.
//  Copyright © 2016 Max. All rights reserved.
//

#import "Organisation.h"
#import "Employee.h"
#import "DatabaseController.h"

@implementation Organisation (Logic)

// Method create new object Employee`s class and put in array Organisation`s array
- (void)addEmployeeWithName:(NSString *)employeesName //andLastName:(NSString *)employeesLastName
{
    int employeesSalary = ((arc4random_uniform(490) + 10) * 10);
 
    NSArray *empName = [employeesName componentsSeparatedByString:@" "];

    Employee *myEmp = [NSEntityDescription insertNewObjectForEntityForName:@"Employee" inManagedObjectContext:[DatabaseController sharedInstance].context];
    myEmp.firstName = empName[0];
    myEmp.lastName = empName[1];
    myEmp.salary = employeesSalary;

    NSMutableArray *mutableArray = [self.employees mutableCopy];
    [mutableArray addObject:myEmp];
    self.employees = [mutableArray copy];
    
}

// Method calculate average property "salary" of all emlployees array
- (int)calculateAverageSalary
{
    NSNumber *average = [self.employees valueForKeyPath:@"@avg.salary"];
   
    return average.intValue;
}

// Method iterate array employees and return element with lowest property - salary
- (Employee *)employeeWithLowestSalary
{
    int lowestSalary = INT_MAX;
    Employee *lowestSalariedEmployee;
    for (Employee *employee in self.employees)
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
    
    for (Employee *employee in self.employees)
    {
        if (employee.salary == salaryOfEmployee)
        {
            [arrayWithEmployeesSalary addObject:employee];
        }
    }
    
    return arrayWithEmployeesSalary;
}

- (NSArray *)sortedEmployees
{
    NSSortDescriptor *firstNameDescriptor = [[NSSortDescriptor alloc] initWithKey:@"firstName" ascending:true];
    return [self.employees sortedArrayUsingDescriptors:@[firstNameDescriptor]];
}

- (int)calculateSumOfSalary
{
    int sum = 0;
    for (Employee *employee in self.employees)
    {
            sum = sum + employee.salary;
    }
    return sum;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@", self.name];
}

@end
