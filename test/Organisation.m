//
//  Organisation.m
//  test
//
//  Created by Max on 05.10.16.
//  Copyright © 2016 Max. All rights reserved.
//

#import "Organisation.h"
#import "Employee.h"

@interface Organisation()

@property(strong, nonatomic) NSArray<Employee *> *employees;



@end


@implementation Organisation

//This Method gives organisation name
- (id)initWithName:(NSString *)organisationName
{
    if (self = [super init])
    {
        self.employees = [NSArray new]; // написать свой инициализатор
        self.name = organisationName;
        return self;
    }
    
    return nil;
}

// Method create new object Employee`s class and put in array Organisation`s array
//this method uses Employee`s class constructor
- (void)addEmployeeWithName:(NSString *)employeesName //andLastName:(NSString *)employeesLastName
{
    
    int employeesSalary = ((arc4random_uniform(490) + 10) * 10);
    //employeesSalary = ((employeesSalary / 10) * 10);
    
    NSArray *empName = [employeesName componentsSeparatedByString:@" "];
    
    
    //constructor from Employee class
    Employee *myEmp =[[Employee alloc] initWithFirstName:empName[0] lastName:empName[1] salary:employeesSalary];
    
   
    
    // использовать mutableCopy
    NSMutableArray *mutableArray = [_employees mutableCopy];
    [mutableArray addObject:myEmp];
    
    self.employees = [mutableArray copy];
   
    
    
}


//Method calculate average property "salary" of all emlployees array
- (int)calculateAverageSalary
{
    NSNumber *average = [_employees valueForKeyPath:@"@avg.salary"];
   

    return average.intValue;
    
}

//Method iterate array employees and return element with lowest property - salary
- (id)employeeWithLowestSalary              //нужно вернуть 1 объект класса Employee
{
    int lowestSalary = INT_MAX;
    Employee *lowestSalariedEmployee;
    for (Employee *employee in _employees)// нужно перебрать массив с работниками, но при этом
                                          // только один property - salary
    {
        if (employee.salary < lowestSalary )
        {
            lowestSalary = employee.salary;
            lowestSalariedEmployee = employee;
        }
    }
    return lowestSalariedEmployee;
}

//Checking Employees with selected salary
- (NSMutableArray *)employeesWithSalary:(int)salaryOfEmployee
{
    NSMutableArray *arrayWithEmployeesSalary = [[NSMutableArray alloc] init];
    
    //цикл в котором будут прощитываться елементы массива employees и добавляться в массив выше
    
    for (Employee *employee in _employees)
    {
        if(employee.salary == salaryOfEmployee )
        {
            [arrayWithEmployeesSalary addObject:employee];
        }
    }
    
    return arrayWithEmployeesSalary;
    
}


- (NSString *)description
{
    
    return [NSString stringWithFormat:@"%@", self.name];
    
}



@end
