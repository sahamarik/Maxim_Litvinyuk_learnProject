//
//  MasterViewController.m
//  test
//
//  Created by Max on 17.10.16.
//  Copyright © 2016 Max. All rights reserved.
//

#import "MasterViewController.h"
#import "Organisation.h"
#import "Employee.h"
#import "DetailViewController.h"

@interface MasterViewController ()

//@property (strong, nonatomic) NSMutableArray *employeesArray;

@property (weak, nonatomic) Employee *selectedEmployee;
@property (strong, nonatomic) Organisation *org;

@end

@implementation MasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.org = [[Organisation alloc] initWithName:@"Corporation"];
    [self.org addEmployeeWithName:@"Rork Smith"];
    [self.org addEmployeeWithName:@"Rork2 Smith2"];
    [self.org addEmployeeWithName:@"Rork3 Smith3"];
    [self.org addEmployeeWithName:@"Rork4 Smith4"];
    
    self.title = @"employees";
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.org.employees.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    Employee *employee = self.org.employees [indexPath.row];
    cell.textLabel.text = employee.fullName;
  
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.selectedEmployee = self.org.employees [indexPath.row];
    [self performSegueWithIdentifier:@"mySegue" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"mySegue"])
    {
        DetailViewController *detailView = segue.destinationViewController;
        detailView.employee = self.selectedEmployee;   
    }
}
@end
