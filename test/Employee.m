//
//  Employee.m
//  test
//
//  Created by Max on 10/5/16.
//  Copyright © 2016 Max. All rights reserved.
//

#import "Employee.h"

@interface Employee()

@property (strong, nonatomic) NSString *firstName;
@property (strong, nonatomic) NSString *lastName;

@end

@implementation Employee

- (id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName salary:(int)salary
{
    self = [super init];
    if (self)
    {
        self.firstName = firstName;
        self.lastName = lastName;
        self.salary = salary;
    }
    
    return self;
}

- (NSString *)fullName
{
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@ %d", self.firstName, self.lastName, self.salary];
}

@end
