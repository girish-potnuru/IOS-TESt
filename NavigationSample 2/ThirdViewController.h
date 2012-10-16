//
//  ThirdViewController.h
//  NavigationSample
//
//  Created by Prasad on 10/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol third_protocol <NSObject>

-(void)setlabelvalue:(NSString *)values;

@end

@interface ThirdViewController : UIViewController
- (IBAction)testbutton:(id)sender;
@property (retain, nonatomic) IBOutlet UILabel *hailabel;
@property(retain,nonatomic)id <third_protocol> delegate;

@end
