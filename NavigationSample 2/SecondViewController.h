//
//  SecondViewController.h
//  NavigationSample
//
//  Created by Prasad on 10/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import"ThirdViewController.h"

@interface SecondViewController : UIViewController<third_protocol>

@property (retain, nonatomic) IBOutlet UILabel *secondlabel;
- (IBAction)third:(id)sender;

@end
