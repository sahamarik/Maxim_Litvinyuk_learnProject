//
//  Organisation+CoreDataProperties.m
//  test
//
//  Created by Max on 28.10.16.
//  Copyright © 2016 Max. All rights reserved.
//

#import "Organisation+CoreDataProperties.h"

@implementation Organisation (CoreDataProperties)

+ (NSFetchRequest<Organisation *> *)fetchRequest {
	return [[NSFetchRequest alloc] initWithEntityName:@"Organisation"];
}

@dynamic name;
@dynamic employee;

@end
