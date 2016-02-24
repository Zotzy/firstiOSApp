//
//  CoursesTableViewController.m
//  jeffZotzApp
//
//  Created by Jeff Zotz on 2/23/16.
//  Copyright © 2016 Zotz. All rights reserved.
//

#import "CoursesTableViewController.h"
#import "CoursesTableCell.h"

@interface CoursesTableViewController ()

@end

@implementation CoursesTableViewController{
    NSArray *coursesTaken;
    NSArray *coursesGrades;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //Array indices are assciated, the course grade will have the same index as course title
    coursesTaken = [NSArray arrayWithObjects:
                    @"CSCI 1170",
                    @"CSCI 3130",
                    @"CSCI 2170",
                    @"CSCI 3080",
                    @"CSCI 3210",
                    @"CSCI 3160",
                    @"CSCI 3110",
                    @"CSCI 4250",
                    @"CSCI 4160",
                    @"CSCI 3240",
                    @"CSCI 4900",
                    @"CSCI 4700",
                    nil];
    
    coursesGrades = [NSArray arrayWithObjects:
                    @"A",
                    @"A",
                    @"A",
                    @"A",
                    @"A",
                    @"A",
                    @"A",
                    @"A",
                    @"A",
                    @"A",
                    @"Pending",
                    @"Pending",
                    nil];
    
    self.view.backgroundColor = [UIColor colorWithRed:1 green:0.992 blue:0.8 alpha:1]; /*#fffdcc*/
    self.title = @"Jeff's Courses Taken";
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return [coursesTaken count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *coursesTableIdentifier = @"CoursesTableCell";
    
    CoursesTableCell *cell = [tableView dequeueReusableCellWithIdentifier:coursesTableIdentifier];
    
    if (cell == nil)
    {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"CoursesTableCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.course.text = [coursesTaken objectAtIndex:indexPath.row];
    cell.grade.text = [coursesGrades objectAtIndex:indexPath.row];
    
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
