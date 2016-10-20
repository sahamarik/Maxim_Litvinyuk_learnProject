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

@property (strong, nonatomic) NSMutableArray *employeesArray;

@property (strong, nonatomic) Employee *savedEmployee;

@end

@implementation MasterViewController



- (void)viewDidLoad {
    [super viewDidLoad];
//    self.myTableView.delegate = self;
//    self.myTableView.dataSource = self;
  
    Organisation *newOrganisation = [[Organisation alloc] initWithName:@"Corp"];
    [newOrganisation addEmployeeWithName:@"Rork Smith"];
    [newOrganisation addEmployeeWithName:@"Rork1 Smith1"];
    [newOrganisation addEmployeeWithName:@"Rork2 Smith2"];
    [newOrganisation addEmployeeWithName:@"Rork3 Smith3"];
    // Do any additional setup after loading the view.
    self.title = @"employees";
  
   self.employeesArray = [[NSMutableArray alloc] init];
   self.employeesArray = [newOrganisation.employees copy];
  

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.employeesArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    Employee *employee = self.employeesArray[indexPath.row];
    cell.textLabel.text = employee.fullName;
  
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.savedEmployee = [self.employeesArray objectAtIndex:indexPath.row];
    [self performSegueWithIdentifier:@"mySegue" sender:self];

    
    //    DetailViewController *destViewController = [DetailViewController new];  ----сохранить работника
    //    [self.navigationController pushViewController:destViewController animated:YES];
}


- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"mySegue"])
    {
        //NSIndexPath *indexPath = [self.myTableView indexPathForCell:(UITableViewCell *) self.savedEmployee];
        DetailViewController *detailView = segue.destinationViewController;
        detailView.employee = self.savedEmployee; // использовать выбранного работника
    
    }
}



#pragma mark - Navigation


@end
