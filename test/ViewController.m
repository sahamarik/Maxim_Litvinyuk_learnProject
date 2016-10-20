//
//  ViewController.m
//  test
//
//  Created by Max on 10/5/16.
//  Copyright © 2016 Max. All rights reserved.
//

#import "ViewController.h"
#import "Employee.h"
#import "Organisation.h"


@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"Organisation";
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
//{
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyBasicCell"];
//    Organisation *newOrg = [self.employees objectAtIndex:indexPath.row];
//    cell.textLabel.text = newOrg.name;
//    return cell;
//}

@end
