//
//  Employee+CoreDataProperties.m
//  
//
//  Created by Max on 09.11.16.
//
//  This file was automatically generated and should not be edited.
//

#import "Employee+CoreDataProperties.h"

@implementation Employee (CoreDataProperties)

+ (NSFetchRequest<Employee *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Employee"];
}

@dynamic dateOfBirth;
@dynamic firstName;
@dynamic fullName;
@dynamic lastName;
@dynamic order;
@dynamic salary;
@dynamic isActive;
@dynamic organisation;

@end
