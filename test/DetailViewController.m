//
//  DetailViewController.m
//  test
//
//  Created by Max on 20.10.16.
//  Copyright © 2016 Max. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSArray *empName = [self.employee.fullName componentsSeparatedByString:@" "];
    NSString *firstNameOfEmployee = empName[0];
    int sal = _employee.salary;
    
    
    self.title = self.employee.fullName;
    self.detailLabel.text = [NSString stringWithFormat:@"%@`s salary is - %d", firstNameOfEmployee, sal];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
   
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
