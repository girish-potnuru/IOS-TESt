//
//  SecondViewController.m
//  NavigationSample
//
//  Created by Prasad on 10/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController
@synthesize secondlabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(notificationHappened:)
                                                 name:@"Test"
                                               object:nil];
    

}

- (void)viewDidUnload
{
    [self setSecondlabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
/*
 
 */

-(void)setlabelvalue:(NSString *)values
{
    
    self.secondlabel.text=values;
    
}

- (void)notificationHappened:(NSNotification *)notification 
{
    // do work here
    
     self.secondlabel.text=@"press me";
    
    
}

 
 



- (IBAction)third:(id)sender
{
    ThirdViewController *sview=[[ThirdViewController alloc]initWithNibName:@"ThirdViewController" bundle:nil];
    
    sview.delegate=self;
    
    [self.navigationController  pushViewController:sview animated:YES];
}
- (void)dealloc {
    [secondlabel release];
    [super dealloc];
}
@end
