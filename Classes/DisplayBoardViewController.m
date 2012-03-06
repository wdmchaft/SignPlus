//
//  DisplayBoardViewController.m
//  DisplayBoard
//
//  Created by Sonny on 9/22/10.
//  Copyright 2010 SonsterMedia. All rights reserved.
//

#import "DisplayBoardViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "AboutMeView.h"
#import "HelpGuideView.h"

@implementation DisplayBoardViewController
@synthesize textbox, navbar, fullScreenView;
@synthesize scrollPages, scrollViewPreview;







	

-(IBAction)submit{
	

	[textbox resignFirstResponder];
}



-(IBAction)fullscreen{
	
	// Set up the create a temporary fullscreenview.
	FullScreenView *full = [[FullScreenView alloc] initWithNibName:@"FullScreenView" bundle:nil];
	full.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	
	full.labeltext = textbox.text;
	//full.labelcolor = displaytext.textColor;
	[self setFullScreenView:full]; // Set it to our property (nonatomic, retain).
	 // Clean up.
	
	[self presentModalViewController:fullScreenView animated:YES]; // Present the view.
	
	// We've now got a reference to this FullScreenView.
}


- (BOOL)textFieldShouldReturn: (UITextField *)textField {
	//Return key dimisses keyboard
	[textField resignFirstResponder];
	return YES;
}

- (void)touchesEnded: (NSSet *)touches withEvent: (UIEvent *)event {
	//dismisses keyboard if you touch outside textfield
	for (UIView* view in self.view.subviews) {
		if ([view isKindOfClass:[UITextField class]])
			[view resignFirstResponder];
	}
}

-(IBAction)clearTextField{
textbox.text= @"";	
	
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	
	
	
    [super viewDidLoad];
	textbox.layer.cornerRadius = 10;
	

	
	
	// We have some predefined images added to the project.
	self.scrollPages = [NSArray arrayWithObjects:@"Hello",
						@"Happy Birthday",
						@"Yes",
						@"No",
						@"Go Team",
						@"Welcome Home",
						@"Reserved",
						@"Open",
						@"Closed",
						@"iPad For Sale",
                        @"Will Code For Food",
                        @"WWDC or Bust",
						nil];
	
	// You can add the control programatically like so:
	// Position the scrollview. It will be centered in the portrait view. The viewSize defines the size 
	// of each item you want to display in your scroll view. The size of the "preview" on each side equals the
	// width of the frame minus the width of the "view", ie, 320 - 240 = 60 / 2 = 30. 
	//scrollViewPreview = [[BSPreviewScrollView alloc] initWithFrameAndPageSize:CGRectMake(0, 70, 320, 320) pageSize:CGSizeMake(240, 700)];
	
	[scrollViewPreview setBackgroundColor:[UIColor darkGrayColor]];
	scrollViewPreview.pageSize = CGSizeMake(1026, 320);
	// Important to listen to the delegate methods.
	scrollViewPreview.delegate = self;
	//w[self.view addSubview:scrollViewPreview];
}

-(void)BSPreviewTapped:(id)sender
{
	
	FullScreenView *full = [[FullScreenView alloc] initWithNibName:@"FullScreenView" bundle:nil];
	full.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
	
	full.labeltext = [self.scrollPages objectAtIndex:[(TappedView *)[sender view] positioninArray]];

		//full.labelcolor = displaytext.textColor;
	[self setFullScreenView:full]; // Set it to our property (nonatomic, retain).
	 // Clean up.
	
	[self presentModalViewController:fullScreenView animated:YES]; // Present the view.
	
	
}


#pragma mark -
#pragma mark BSPreviewScrollViewDelegate methods
-(UIView*)viewForItemAtIndex:(BSPreviewScrollView*)scrollView index:(int)index
{

	UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(BSPreviewTapped:)];
	[tap setNumberOfTapsRequired:2];
	
	TappedView *view = [[TappedView alloc]initWithFrame:CGRectMake(0, 0, 1026, 320)];
	UIView *content = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 400, 242)];
	[content setBackgroundColor:[UIColor whiteColor]];
	[view setPositioninArray:index];
	[view addGestureRecognizer:tap];
	
	UILabel *textLabel = [[UILabel alloc]initWithFrame:content.frame];
	[textLabel setFont:[UIFont boldSystemFontOfSize:40]];
	[textLabel setTextAlignment:UITextAlignmentCenter];
	[textLabel setText:[self.scrollPages objectAtIndex:index]];
	[textLabel setBackgroundColor:[UIColor clearColor]];
	
	content.center = view.center;
	[content addSubview:textLabel];
 	[view addSubview:content];
	
	
	
	
	return view;
}

-(int)itemCount:(BSPreviewScrollView*)scrollView
{
	// Return the number of pages we intend to display
	return [self.scrollPages count];
}




-(IBAction)launchAboutView{
    AboutMeView *amv = [[AboutMeView alloc] initWithNibName:@"AboutMeView" bundle:nil];
	amv.modalTransitionStyle = UIModalTransitionStylePartialCurl;	
	[self presentModalViewController:amv animated:YES]; // Present the view.
    
}



-(IBAction)launchHelpScreenView{
    HelpGuideView *hgv = [[HelpGuideView alloc] initWithNibName:@"HelpGuideView" bundle:nil];
	
	
	[self presentModalViewController:hgv animated:YES]; // Present the view.
    
    
}

/*
 TAG GUIDE:
 
 Tags 101-117 are for the saved text controls
 
 Odd Tags (101, 103, etc...) are for the buttons with the exception of the last tag (117) which is for the advance button.
 Even Tags (102, 104, etc...) are for the text labels.
 
 All elements are automatically hidden in the app until they are programmatically shown.
 
 */






// Override to allow orientations other than the default portrait orientation.
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
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}



@end
