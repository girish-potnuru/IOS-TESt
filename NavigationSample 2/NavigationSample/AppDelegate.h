//
//  AppDelegate.h
//  NavigationSample
//
//  Created by Prasad on 10/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;
@property(strong,nonatomic)UINavigationController *navcontroller;

@end
