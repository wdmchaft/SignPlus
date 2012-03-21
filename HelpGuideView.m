//
//  AboutMeView.m
//  DisplayBoard
//
//  Created by Sonny on 11/18/10.
//  Copyright (c) 2010 SonsterMedia. All rights reserved.
//

#import "HelpGuideView.h"


@implementation HelpGuideView
-(IBAction)done{

	[self dismissModalViewControllerAnimated:YES];	
}

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	x_exists = TRUE;
}



-(IBAction)pushForward
{
	
if (x_exists & (i<2)) {
	i++;
}	
else {
	i = 0;
	x_exists = TRUE;
}
	NSLog(@"What is x:%i", i);

	
	[self ImageFrame:i];	
	
}


-(void)ImageFrame:(int) x {
	
	switch (x) {
		case 0:
			[pagecontrol setCurrentPage:0];
			[imageframe setImage:[UIImage imageNamed:@"Tutorial.png"]];
			break;
		case 1:
			[pagecontrol setCurrentPage:1];
			[imageframe setImage:[UIImage imageNamed:@"Tutorial_2.png"]];
			break;
		case 2:
			[pagecontrol setCurrentPage:2];
			[imageframe setImage:[UIImage imageNamed:@"Tutorial_3.png"]];
			break;
		default:
			[pagecontrol setCurrentPage:0];
			[imageframe setImage:[UIImage imageNamed:@"Tutorial.png"]];
			break;
	}	
	
}


-(IBAction)pushBackwards{
	
	if (i == 0){
		//NSLog(@"Zero");
	}
	else {
		//NSLog(@"Devalue");
		i--;
	}
	
	
	[self ImageFrame:i];	
	
	
	
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	if (interfaceOrientation == UIDeviceOrientationLandscapeLeft){
		return YES;
	}
	else if (interfaceOrientation == UIDeviceOrientationLandscapeRight){
		return YES;
	}
	
	
	else{
		return NO;
	}
	
}



- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}


- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}




@end
