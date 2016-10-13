//
//  Organisation.h
//  test
//
//  Created by Max on 05.10.16.
//  Copyright © 2016 Max. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Employee;

@interface Organisation : NSObject

@property (strong, nonatomic) NSString *name;

- (id)initWithName:(NSString *)organisationName;
- (void)addEmployeeWithName:(NSString *)employeesName;
- (int)calculateAverageSalary;
- (Employee *)employeeWithLowestSalary;
- (NSMutableArray *)employeesWithSalary:(int)salaryOfEmployee;
- (void)removeEmployee:(Employee *)employee;

@end
