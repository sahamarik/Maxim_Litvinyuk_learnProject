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
#import "Organisation+CoreDataProperties.h"
#import "DatabaseController.h"
#import "test-Swift.h"


@interface MasterViewController ()

@property (weak, nonatomic) Employee *selectedEmployee;
@property (strong, nonatomic) Organisation *org;

@end

@implementation MasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSArray *fetchResult = [DatabaseController requestResultsForPredicate:nil sortDescriptors:nil entity:@"Organisation" fromContext:[DatabaseController sharedInstance].context];
    if (fetchResult.count > 0)
    {   
        self.org = fetchResult.firstObject;
    }
    else
    {
        self.org = [NSEntityDescription insertNewObjectForEntityForName:@"Organisation" inManagedObjectContext:[DatabaseController sharedInstance].context];
        self.org.name = @"Evil Corp";
        [DatabaseController saveContext];       
    }
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(notificationOrderOfEmployeesUpdated) name:@"Changed" object:nil];
}

- (void)notificationOrderOfEmployeesUpdated
{
    [self.myTableView reloadData];
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
    Employee *employee = self.org.sortedEmployees[indexPath.row];
    [cell.textLabel setText:employee.fullName];
  
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return true;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.selectedEmployee = self.org.sortedEmployees[indexPath.row];
    [self.org removeEmployeesObject:self.selectedEmployee];
    [DatabaseController saveContext];
    
    [self.myTableView reloadData];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.selectedEmployee = self.org.sortedEmployees[indexPath.row];
    [self performSegueWithIdentifier:@"segueToDetailView" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"segueToDetailView"])
    {
        DetailViewController *detailView = segue.destinationViewController;
        detailView.employee = self.selectedEmployee;
    }
    
    else if ([segue.identifier isEqualToString:@"createEmployeeSegue"])
    {
        CreateEmployeeViewController *createView = segue.destinationViewController;
        createView.delegate = self;     // указание на то,что текущий объект будет делегатором для объекта createView
        createView.employeeWithLastOrder = self.org.sortedEmployees.lastObject;
    }
    else if ([segue.identifier isEqualToString:@"segueToEditOrganisation"])
    {
        OrganisationInfoViewController *infoController = segue.destinationViewController;
        infoController.fetchedOrganisation = self.org;
    }
}

- (void)sendEmployee:(Employee *)newEmployee
{
    [self.org addEmployeesObject:newEmployee];
    [DatabaseController saveContext];
    [self.myTableView reloadData];
}

@end
