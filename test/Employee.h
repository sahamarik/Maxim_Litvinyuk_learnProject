//
//  Employee.h
//  test
//
//  Created by Max on 10/5/16.
//  Copyright © 2016 Max. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

@property (nonatomic, assign) int salary;
@property (nonatomic, readonly) NSString *fullName;
@property (strong, nonatomic) NSString *firstName;

- (id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName salary:(int)salary;

@end
