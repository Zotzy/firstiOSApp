//
//  TableViewCell.h
//  jeffZotzApp
//
//  Created by Jeff Zotz on 2/23/16.
//  Copyright © 2016 Zotz. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CoursesTableCell : UITableViewCell 

@property (nonatomic, weak) IBOutlet UILabel *course;
@property (nonatomic, weak) IBOutlet UILabel *grade;

@end
