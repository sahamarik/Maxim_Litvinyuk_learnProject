//
//  Employee.h
//  test
//
//  Created by Max on 10/5/16.
//  Copyright © 2016 Max. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Employee : NSObject

@property (nonatomic, readwrite) int salary;
@property (nonatomic, readonly) NSString *fullName;

- (id)initWithFirstName:(NSString *)firstName lastName:(NSString *)lastName salary:(int)salary;

@end
