//
//  Organisation+CoreDataProperties.h
//  
//
//  Created by Max on 04.11.16.
//
//

#import "Organisation+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Organisation (CoreDataProperties)

+ (NSFetchRequest<Organisation *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *name;
@property (nullable, nonatomic, retain) NSSet<Employee *> *employees;

@end

@interface Organisation (CoreDataGeneratedAccessors)

- (void)addEmployeesObject:(Employee *)value;
- (void)removeEmployeesObject:(Employee *)value;
- (void)addEmployees:(NSSet<Employee *> *)values;
- (void)removeEmployees:(NSSet<Employee *> *)values;

@end

NS_ASSUME_NONNULL_END
