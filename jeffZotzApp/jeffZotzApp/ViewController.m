//
//  ViewController.m
//  jeffZotzApp
//
//  Created by Jeff Zotz on 2/23/16.
//  Copyright © 2016 Zotz. All rights reserved.
//

#import "ViewController.h"
#import "CoursesTableCell.h"
#import "CoursesTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.view.backgroundColor = [UIColor colorWithRed:0.251 green:0.776 blue:0.867 alpha:1];
    
    self.title = @"Main View";
    //the my courses taken button
    //UIButton *button = (UIButton *)[self.view viewWithTag:7];
    
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Grades" style:UIBarButtonItemStylePlain
                                             target:self action:@selector(pushSecondController)];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showMessage
{
    UIAlertView *helloWorldAlert = [[UIAlertView alloc]
                                    initWithTitle:@"Zotz App" message:@"Hello, World!"
                                    delegate:nil cancelButtonTitle:@"OK"
                                    otherButtonTitles:nil];
    [helloWorldAlert show];
}

- (void)pushSecondController
{
    CoursesTableViewController *secondController = [[CoursesTableViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:secondController animated:"YES"];
}




@end
