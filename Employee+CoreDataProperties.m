//
//  Employee+CoreDataProperties.m
//  
//
//  Created by Max on 04.11.16.
//
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
@dynamic dateOfBirth;
@dynamic organisation;

@end
