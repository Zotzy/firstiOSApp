//
//  AppDelegate.h
//  jeffZotzApp
//
//  Created by Jeff Zotz on 2/23/16.
//  Copyright © 2016 Zotz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) ViewController *rootViewController;
@property (strong, nonatomic) UINavigationController *navigationController;
@property (strong, nonatomic) UIWindow *window;

@end

