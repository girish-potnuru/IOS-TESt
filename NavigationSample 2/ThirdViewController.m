//
//  ThirdViewController.m
//  NavigationSample
//
//  Created by Prasad on 10/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ThirdViewController.h"

@implementation ThirdViewController
@synthesize hailabel;
@synthesize delegate;

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
}

- (void)viewDidUnload
{
    [self setHailabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
        
    
    
    
    
    
    
    
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)testbutton:(id)sender 
{
    /*
    NSArray *array=[self.navigationController viewControllers];
    for(int i=0;i<[array count];i++)
    {
      
        if([[array objectAtIndex:i]isKindOfClass:[SecondViewController class]])
        {
            
            SecondViewController *sview=(SecondViewController *)[array objectAtIndex:i];
            sview.secondlabel.text=hailabel.text;
            
        }
        
        
    }
   
    
    [delegate setlabelvalue:hailabel.text];
     */
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"Test"
                                                        object:self
                                                      userInfo:nil];
    
    [self.navigationController popViewControllerAnimated:YES];
}
- (void)dealloc {
    [hailabel release];
    [super dealloc];
}
@end
