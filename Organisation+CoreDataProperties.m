//
//  Organisation+CoreDataProperties.m
//  
//
//  Created by Max on 04.11.16.
//
//

#import "Organisation+CoreDataProperties.h"

@implementation Organisation (CoreDataProperties)

+ (NSFetchRequest<Organisation *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Organisation"];
}

@dynamic name;
@dynamic employees;

@end
