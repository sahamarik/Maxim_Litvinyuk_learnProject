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

@interface MasterViewController ()

@property (weak, nonatomic) Employee *selectedEmployee;
@property (weak, nonatomic) Employee *deletedEmployee;
@property (strong, nonatomic) Organisation *org;
@property (strong, nonatomic) NSArray *sortedArrayInCell;

@end

@implementation MasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"Organisation"];

    NSArray *fetchResult = [[DatabaseController sharedInstance].context executeFetchRequest:fetchRequest error:nil];
    if (fetchResult.count > 0)
    {   
        self.org = [fetchResult objectAtIndex:0];
    }
    else
    {
        self.org = [NSEntityDescription insertNewObjectForEntityForName:@"Organisation" inManagedObjectContext:[DatabaseController sharedInstance].context];
        self.org.name = @"Evil Corp";
        [DatabaseController saveContext];
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.org.employee.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myCell" forIndexPath:indexPath];
    
    NSSortDescriptor *firstNameDescriptor = [[NSSortDescriptor alloc] initWithKey:@"firstName" ascending:true];
    self.sortedArrayInCell = [self.org.employee sortedArrayUsingDescriptors:@[firstNameDescriptor]];
    
    Employee *employeeToCell = self.sortedArrayInCell[indexPath.row];
    [cell.textLabel setText:[NSString stringWithFormat:@"%@ %@", [employeeToCell valueForKey:@"firstName"], [employeeToCell valueForKey:@"lastName"]]];
  
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return true;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.deletedEmployee = self.sortedArrayInCell[indexPath.row];
    [self.org removeEmployeeObject:self.deletedEmployee];
    [DatabaseController saveContext];
    
    [self.myTableView reloadData];
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.selectedEmployee = self.sortedArrayInCell[indexPath.row];
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
    }
}

- (void)sendEmployee:(Employee *)createEmployee
{
    [self.org addEmployeeObject:createEmployee];
    [DatabaseController saveContext];
    [self.myTableView reloadData];
}

@end
