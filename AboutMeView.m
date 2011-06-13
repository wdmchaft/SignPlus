//
//  AboutMeView.m
//  DisplayBoard
//
//  Created by Sonny on 11/18/10.
//  Copyright (c) 2010 SonsterMedia. All rights reserved.
//

#import "AboutMeView.h"


@implementation AboutMeView

-(IBAction)done{

	[self dismissModalViewControllerAnimated:YES];	
}



-(IBAction)sendMail{
	NSString *url = [NSString stringWithString: @"mailto:contactrobot@sonstermedia.com"];
	[[UIApplication sharedApplication] openURL: [NSURL URLWithString: url]];
}

-(IBAction)openSupport{
	NSString *url = [NSString stringWithString: @"http://support.sonstermedia.com"];
	[[UIApplication sharedApplication] openURL: [NSURL URLWithString: url]];
}
-(IBAction)openWeb{
	NSString *url = [NSString stringWithString: @"http://sonstermedia.com/downloads"];
	[[UIApplication sharedApplication] openURL: [NSURL URLWithString: url]];
}
-(IBAction)openTwitter{
	NSString *url = [NSString stringWithString: @"http://mobile.twitter.com/sonstermedia"];
	[[UIApplication sharedApplication] openURL: [NSURL URLWithString: url]];
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

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


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


- (void)dealloc {
    [super dealloc];
}


@end
