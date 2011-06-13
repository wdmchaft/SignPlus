    //
//  TextController.m
//  DisplayBoard
//
//  Created by Sonny on 10/1/10.
//  Copyright 2010 SonsterMedia. All rights reserved.
//
 
#import "TextController.h"
#import "DisplayBoardViewController.h"
#import "DisplayBoardAppDelegate.h"
#import "FullScreenView.h"
#import <QuartzCore/QuartzCore.h>

@implementation TextController	
@synthesize textcontroller_label,messageLabel;
@synthesize font_segmentedcontrol,textcolor_segmentedcontrol;

 
-(IBAction)textcolor_changed{
	
	DisplayBoardAppDelegate * appDel = (DisplayBoardAppDelegate *)[[UIApplication sharedApplication] delegate];
	DisplayBoardViewController * mainView = appDel.viewController;
	FullScreenView * FullScreenViewReference = mainView.fullScreenView;
	
	switch (self.textcolor_segmentedcontrol.selectedSegmentIndex) {
case 0:
	FullScreenViewReference.fullscreenLabel.textColor = [UIColor blackColor];	
	break;
case 1:
	FullScreenViewReference.fullscreenLabel.textColor = [UIColor whiteColor];
	break;
case 2:
	FullScreenViewReference.fullscreenLabel.textColor = [UIColor redColor];
	break;
case 3:
	FullScreenViewReference.fullscreenLabel.textColor = [UIColor blueColor];	
	break;
case 4:
	FullScreenViewReference.fullscreenLabel.textColor = [UIColor yellowColor];	
	break;
case 5:
	FullScreenViewReference.fullscreenLabel.textColor = [UIColor greenColor];	
	break;
case 6:
	FullScreenViewReference.fullscreenLabel.textColor = [UIColor purpleColor];	
	break;
default:
	[FullScreenViewReference colorWhite];
	break;
}

}


-(IBAction)fontsize_changed{
	DisplayBoardAppDelegate * appDel = (DisplayBoardAppDelegate *)[[UIApplication sharedApplication] delegate];
	DisplayBoardViewController * mainView = appDel.viewController;
	FullScreenView * FullScreenViewReference = mainView.fullScreenView;
	
switch (self.font_segmentedcontrol.selectedSegmentIndex) {
case 0:
	FullScreenViewReference.fullscreenLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:40.0];	
	break;
case 1:
	FullScreenViewReference.fullscreenLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:80.0];	
	break;
case 2:
	FullScreenViewReference.fullscreenLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:100.0];	
	break;
case 3:
	FullScreenViewReference.fullscreenLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:150.0];		
	break;
case 4:
	FullScreenViewReference.fullscreenLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:180.0];		
	break;
case 5:
	FullScreenViewReference.fullscreenLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:200.0];		
	break;
case 6:
	FullScreenViewReference.fullscreenLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:250.0];	
	break;
default:
	FullScreenViewReference.fullscreenLabel.font = [UIFont fontWithName:@"Helvetica-Bold" size:150.0];	
	break;
}
}




-(IBAction)done{
[self dismissModalViewControllerAnimated:YES];
}




- (void)touchesEnded: (NSSet *)touches withEvent: (UIEvent *)event {
	//dismisses keyboard if you touch outside textfield
	for (UIView* view in self.view.subviews) {
		if ([view isKindOfClass:[UIViewController class]])
			[view resignFirstResponder];
	}
}


-(IBAction)ChangeText{

	DisplayBoardAppDelegate * appDel = (DisplayBoardAppDelegate *)[[UIApplication sharedApplication] delegate];
	DisplayBoardViewController * mainView = appDel.viewController;
	FullScreenView * FullScreenViewReference = mainView.fullScreenView;
	
	FullScreenViewReference.fullscreenLabel.text = textfield.text;
	textcontroller_label.text = textfield.text;
	[textfield resignFirstResponder];
	
	

	
	
}


- (BOOL)textFieldShouldReturn: (UITextField *)textField {
	//Return key dimisses keyboard
	[textField resignFirstResponder];
	return YES;
}




-(IBAction)ColorvalChanged: (id) sender{
	int values;
	values = ((UIButton*) sender).tag;
	
	DisplayBoardAppDelegate * appDel = (DisplayBoardAppDelegate *)[[UIApplication sharedApplication] delegate];
	DisplayBoardViewController * mainView = appDel.viewController;
	FullScreenView * FullScreenViewReference = mainView.fullScreenView;
	
//	NSLog(@"Value: %d", values);
	
	switch (values) {
		case 1:
			
			[FullScreenViewReference colorWhite];
			break;
		case 2:
			[FullScreenViewReference colorRock];
			break;
		case 3:
			[FullScreenViewReference colorWood];	
			break;
		case 4:
			[FullScreenViewReference  colorRed];	//Yellow Paper
			break;
		case 5:
			[FullScreenViewReference colorBlack];
			break;
		case 6:
			[FullScreenViewReference  colorGreen];
			break;
		case 7:
			[FullScreenViewReference  colorGrass];
			break;
		case 8:
			[FullScreenViewReference colorDesigner];
			break;
		case 9:
			[FullScreenViewReference colorBlue];
			break;
		case 10:
			[FullScreenViewReference colorBlanko];
			break;
		case 11:
			[FullScreenViewReference colorPureBlack];
			break;
		case 12:
			[FullScreenViewReference colorUnknown];
			break;
		
		default:
			[FullScreenViewReference colorWhite];
			 break;
	}

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
    
    
    
    
    DisplayBoardAppDelegate * appDel = (DisplayBoardAppDelegate *)[[UIApplication sharedApplication] delegate];
	DisplayBoardViewController * mainView = appDel.viewController;
	FullScreenView * FullScreenViewReference = mainView.fullScreenView;

    
    textfield.text = messageLabel;
    
    int counter = FullScreenViewReference.fullscreenLabel.font.pointSize;
    
    switch (counter){
        case 40:
            [self.font_segmentedcontrol setSelectedSegmentIndex:0];
            break;
        case 80:
            [self.font_segmentedcontrol setSelectedSegmentIndex:1];
            break;
        case 100:
            [self.font_segmentedcontrol setSelectedSegmentIndex:2];
            break;
        case 150:
            [self.font_segmentedcontrol setSelectedSegmentIndex:3];
            break;
        case 180:
            [self.font_segmentedcontrol setSelectedSegmentIndex:4];
            break;
        case 200:
            [self.font_segmentedcontrol setSelectedSegmentIndex:5];
            break;
        case 250:
            [self.font_segmentedcontrol setSelectedSegmentIndex:6];
            break;
        default:
            [self.font_segmentedcontrol setSelectedSegmentIndex:3];
            break;
        }
    
    
    
    id fontcolor = FullScreenViewReference.fullscreenLabel.textColor;
    
    if (fontcolor == [UIColor blackColor])
    {
        [self.textcolor_segmentedcontrol setSelectedSegmentIndex:0];
    }
    else  if (fontcolor == [UIColor whiteColor])
    {
        [self.textcolor_segmentedcontrol setSelectedSegmentIndex:1];
    }
    else if (fontcolor == [UIColor redColor])
    {
        [self.textcolor_segmentedcontrol setSelectedSegmentIndex:2];
    }
    else if (fontcolor == [UIColor blueColor])
    {
        [self.textcolor_segmentedcontrol setSelectedSegmentIndex:3];
    }
    else if (fontcolor == [UIColor yellowColor])
    {
        [self.textcolor_segmentedcontrol setSelectedSegmentIndex:4];
    }
    else if (fontcolor == [UIColor greenColor])
    {
        [self.textcolor_segmentedcontrol setSelectedSegmentIndex:5];
    }
    else if (fontcolor == [UIColor purpleColor])
    {
        [self.textcolor_segmentedcontrol setSelectedSegmentIndex:6];
    }
    
    
	textfield.layer.cornerRadius = 10;
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Overriden to allow any orientation.
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
    [messageLabel release];
    [textcontroller_label release];
    [textfield release];
    [font_segmentedcontrol release];
    [textcolor_segmentedcontrol release];
    [imagePickerController release];
}


@end
