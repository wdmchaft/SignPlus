    //
//  FullScreenView.m
//  DisplayBoard
//
//  Created by Sonny on 9/22/10.
//  Copyright 2010 SonsterMedia. All rights reserved.
//

#import "TemplateViewer.h"
#include <QuartzCore/QuartzCore.h>
#import "TextController.h"


@implementation TemplateViewer
@synthesize fullscreenLabel, labeltext, labelcolor, nav,views,background;
/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


-(void)changeTextColor{
	fullscreenLabel.textColor = [UIColor whiteColor];	
}




-(IBAction)dimiss{
	[self dismissModalViewControllerAnimated:YES];
}


-(void)toggleNav{
	if (navHidden == YES)
	{
		[nav setHidden:NO];
		navHidden = NO;
	}
	else
	{
		[nav setHidden:YES];
		navHidden = YES;
        
	}
		       
}
	








- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	UITouch *touch = [touches anyObject];
	NSUInteger tapCount = [touch tapCount];
	switch (tapCount) {
		case 1:
			//	[NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(singleTapMethod) object:nil];
			[self toggleNav];
			break;
		default:
			break;
	}
}




// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
-(void)viewDidLoad {
	/*
	UIGraphicsBeginImageContext(self.view.bounds.size);
	[self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
	UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
	UIImageWriteToSavedPhotosAlbum(viewImage, nil, nil, nil);
	UIGraphicsEndImageContext();
	*/
    [super viewDidLoad];
	[background setBackgroundColor:[UIColor whiteColor]];
	fullscreenLabel.text = labeltext;
	//fullscreenLabel.textColor = labelcolor;
	
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


- (void)dealloc {
    [super dealloc];
	[fullscreenLabel release];
	[labeltext release];
	[labelcolor release];
    [background release];
    [views release];
	[nav release];
}


@end
