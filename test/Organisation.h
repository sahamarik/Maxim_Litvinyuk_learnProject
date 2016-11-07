//
//  Organisation.h
//  test
//
//  Created by Max on 05.10.16.
//  Copyright © 2016 Max. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Organisation+CoreDataClass.h"

@class Employee;

@interface Organisation (Logic)

- (void)addEmployeeWithName:(NSString *)employeesName;
- (int)calculateAverageSalary;
- (Employee *)employeeWithLowestSalary;
- (NSMutableArray *)employeesWithSalary:(int)salaryOfEmployee;
- (NSArray *)sortedEmployees;
- (int)calculateSumOfSalary;

@end

