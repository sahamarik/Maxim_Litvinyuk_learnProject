//
//  Organisation+CoreDataProperties.h
//  test
//
//  Created by Max on 28.10.16.
//  Copyright © 2016 Max. All rights reserved.
//

#import "Organisation+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Organisation (CoreDataProperties)

+ (NSFetchRequest<Organisation *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, retain) NSSet<Employee *> *employee;

@end

@interface Organisation (CoreDataGeneratedAccessors)

- (void)addEmployeeObject:(Employee *)value;
- (void)removeEmployeeObject:(Employee *)value;
- (void)addEmployee:(NSSet<Employee *> *)values;
- (void)removeEmployee:(NSSet<Employee *> *)values;

@end

NS_ASSUME_NONNULL_END
