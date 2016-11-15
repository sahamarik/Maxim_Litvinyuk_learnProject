//
//  Employee.m
//  test
//
//  Created by Max on 10/5/16.
//  Copyright © 2016 Max. All rights reserved.
//

#import "Employee.h"

@implementation Employee (Logic)

- (NSString *)fullName
{
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@ %d", self.firstName, self.lastName, self.salary];
}

@end
