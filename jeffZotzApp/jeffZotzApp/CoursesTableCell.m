//
//  TableViewCell.m
//  jeffZotzApp
//
//  Created by Jeff Zotz on 2/23/16.
//  Copyright © 2016 Zotz. All rights reserved.
//

#import "CoursesTableCell.h"

@implementation CoursesTableCell

@synthesize course = _course;
@synthesize grade = _grade;

- (void)awakeFromNib {
    // Initialization code
    self.backgroundColor = [UIColor colorWithRed:1 green:0.992 blue:0.8 alpha:1]; /*#fffdcc*/

    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
