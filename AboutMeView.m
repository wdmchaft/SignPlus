//
//  AboutMeView.m
//  DisplayBoard
//
//  Created by Sonny on 11/18/10.
//  Copyright (c) 2010 SonsterMedia. All rights reserved.
//

#import "AboutMeView.h"
#import "Web.h"

@implementation AboutMeView

-(IBAction)done{

	[self dismissModalViewControllerAnimated:YES];	
}


-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
	
	[self dismissModalViewControllerAnimated:YES];
}


-(IBAction)sendMail{
	if ([MFMailComposeViewController canSendMail])
	{
		MFMailComposeViewController *mailViewController = [[MFMailComposeViewController alloc] init];
		mailViewController.mailComposeDelegate = self;
		mailViewController.navigationBar.tintColor = [UIColor colorWithRed:87/255 green:35/255 blue:85/255 alpha:1.0];
		
		[mailViewController setToRecipients:[NSArray arrayWithObject:@"support@sonstermedia.com"]];
		[mailViewController setSubject:@"Contact Form"];
	
		
			// Present the VIew Controller and clean up after ourselves
		[self presentModalViewController:mailViewController animated:YES];
	}
	else if (![MFMailComposeViewController canSendMail]){
		UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Email Not Yet Configured" message:@"Email needs to setup on the device before you can use this feature. Open the Mail to setup your email" delegate:self cancelButtonTitle:@"I Understand" otherButtonTitles:nil];
		[alertView show];
	}
}

-(IBAction)openSupport{
	if ([MFMailComposeViewController canSendMail])
	{
		MFMailComposeViewController *mailViewController = [[MFMailComposeViewController alloc] init];
		mailViewController.mailComposeDelegate = self;
		mailViewController.navigationBar.tintColor = [UIColor colorWithRed:153.0/255.0 green:153.0/255.0 blue:153.0/255.0 alpha:1.0];
		
		[mailViewController setToRecipients:[NSArray arrayWithObject:@"support@sonstermedia.com"]];
		[mailViewController setSubject:@"Sign+ Support Ticket"];
		[mailViewController setMessageBody:[NSString stringWithFormat:@"<html><body><b>Issue:</b><br/><i>Describe the issue in detail</i><br/><br/><b>Technical Details</b><span><br/>iOS Version: %@<br/>Device Model: %@<br/>Application Version: %@<br/></span></html>",[[UIDevice currentDevice] systemVersion],[[UIDevice currentDevice] model],[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]] isHTML:YES];
		
			// Present the VIew Controller and clean up after ourselves
		[self presentModalViewController:mailViewController animated:YES];
	}
	else if (![MFMailComposeViewController canSendMail]){
		UIAlertView *alertView = [[UIAlertView alloc]initWithTitle:@"Email Not Yet Configured" message:@"Email needs to setup on the device before you can use this feature. Open the Mail to setup your email" delegate:self cancelButtonTitle:@"I Understand" otherButtonTitles:nil];
		[alertView show];
	}
}
-(IBAction)openWeb{
	Web *sonstermedia = [[Web alloc]initWithNibName:@"Web" bundle:nil];
	[sonstermedia setModalPresentationStyle:UIModalPresentationFormSheet];
	[sonstermedia setUrl:[NSURL URLWithString:@"http://sonstermedia.com"]];
	[self presentModalViewController:sonstermedia animated:YES];
}
-(IBAction)openTwitter{
	Web *sonstermedia = [[Web alloc]initWithNibName:@"Web" bundle:nil];
	[sonstermedia setModalPresentationStyle:UIModalPresentationFormSheet];
	[sonstermedia setUrl:[NSURL URLWithString:@"http://twitter.com/sonnyfazio"]];
	[self presentModalViewController:sonstermedia animated:YES];
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
	
	icon.image = [UIImage imageNamed:@"self.png"];

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
