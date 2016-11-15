//
//  Employee.m
//  test
//
//  Created by Max on 10/5/16.
//  Copyright © 2016 Max. All rights reserved.
//

#import "Employee.h"
#import "DatabaseController.h"

@implementation Employee (Logic)

- (NSString *)fullName
{
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

+ (instancetype)createEmployeeWithRawData:(NSDictionary *)dict
{
    Employee *employeeFromJSON = [NSEntityDescription insertNewObjectForEntityForName:@"Employee" inManagedObjectContext:[DatabaseController sharedInstance].context];
    
    employeeFromJSON.firstName = dict[@"first_name"];
    employeeFromJSON.lastName = dict[@"last_name"];
    if (dict[@"salary"] != [NSNull null])
    {
        employeeFromJSON.salary = [dict[@"salary"] intValue];
    }
    employeeFromJSON.isActive = dict[@"isActive"];
    employeeFromJSON.order = [dict[@"order"] intValue];

    return employeeFromJSON;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@ %d", self.firstName, self.lastName, self.salary];
}

@end
