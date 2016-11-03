//
//  Employee+CoreDataProperties.m
//  test
//
//  Created by Max on 28.10.16.
//  Copyright © 2016 Max. All rights reserved.
//

#import "Employee+CoreDataProperties.h"

@implementation Employee (CoreDataProperties)

+ (NSFetchRequest<Employee *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Employee"];
}

@dynamic firstName;
@dynamic fullName;
@dynamic lastName;
@dynamic salary;
@dynamic organisation;



@end
