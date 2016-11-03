//
//  Employee+CoreDataProperties.h
//  test
//
//  Created by Max on 28.10.16.
//  Copyright © 2016 Max. All rights reserved.
//

#import "Employee+CoreDataClass.h"


NS_ASSUME_NONNULL_BEGIN

@interface Employee (CoreDataProperties)

+ (NSFetchRequest<Employee *> *)fetchRequest;

@property (nullable, nonatomic, copy) NSString *firstName;
@property (nullable, nonatomic, copy) NSString *fullName;
@property (nullable, nonatomic, copy) NSString *lastName;
@property (nonatomic) int32_t salary;
@property (nullable, nonatomic, retain) Organisation *organisation;

@end

NS_ASSUME_NONNULL_END
