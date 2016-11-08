//
//  Employee+CoreDataProperties.h
//  
//
//  Created by Max on 08.11.16.
//
//

#import "Employee+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Employee (CoreDataProperties)

+ (NSFetchRequest<Employee *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSDate *dateOfBirth;
@property (nullable, nonatomic, copy) NSString *firstName;
@property (nullable, nonatomic, copy) NSString *fullName;
@property (nullable, nonatomic, copy) NSString *lastName;
@property (nonatomic) int32_t salary;
@property (nonatomic) int32_t order;
@property (nullable, nonatomic, retain) Organisation *organisation;

@end

NS_ASSUME_NONNULL_END
