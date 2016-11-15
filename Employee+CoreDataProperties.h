//
//  Employee+CoreDataProperties.h
//  
//
//  Created by Max on 09.11.16.
//
//  This file was automatically generated and should not be edited.
//

#import "Employee+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Employee (CoreDataProperties)

+ (NSFetchRequest<Employee *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSDate *dateOfBirth;
@property (nullable, nonatomic, copy) NSString *firstName;
@property (nullable, nonatomic, copy) NSString *fullName;
@property (nullable, nonatomic, copy) NSString *lastName;
@property (nonatomic) int32_t order;
@property (nonatomic) int32_t salary;
@property (nonatomic) BOOL isActive;
@property (nullable, nonatomic, retain) Organisation *organisation;

@end

NS_ASSUME_NONNULL_END
