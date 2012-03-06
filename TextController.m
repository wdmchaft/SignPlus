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



-(IBAction)saveSign
{
    
    NSMutableArray *array = [[NSMutableArray alloc]initWithArray:[[NSUserDefaults standardUserDefaults] objectForKey:@"savedSigns"]];
    
    [array addObject:textcontroller_label.text];
    [[NSUserDefaults standardUserDefaults] setValue:array forKey:@"savedSigns"];
    
    
    
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
	
	

	
	
}


- (BOOL)textFieldShouldReturn: (UITextField *)textField {
	//Return key dimisses keyboard
	[textField resignFirstResponder];
	return YES;
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

-(void)dismissWithPinch
{
	[self dismissModalViewControllerAnimated:YES];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIPinchGestureRecognizer *pinch = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(dismissWithPinch)];
	[self.view addGestureRecognizer:pinch];
    
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
    
    if (fontcolor == [UIColor blackColor]){
        [self.textcolor_segmentedcontrol setSelectedSegmentIndex:0];
    } else  if (fontcolor == [UIColor whiteColor]) {
        [self.textcolor_segmentedcontrol setSelectedSegmentIndex:1];
    } else if (fontcolor == [UIColor redColor]) {
        [self.textcolor_segmentedcontrol setSelectedSegmentIndex:2];
    } else if (fontcolor == [UIColor blueColor]) {
        [self.textcolor_segmentedcontrol setSelectedSegmentIndex:3];
    } else if (fontcolor == [UIColor yellowColor]) {
        [self.textcolor_segmentedcontrol setSelectedSegmentIndex:4];
    } else if (fontcolor == [UIColor greenColor]) {
        [self.textcolor_segmentedcontrol setSelectedSegmentIndex:5];
    } else if (fontcolor == [UIColor purpleColor]) {
        [self.textcolor_segmentedcontrol setSelectedSegmentIndex:6];
    }
    
    
	textfield.layer.cornerRadius = 10;
	
	presetColors = [NSArray arrayWithObjects:@"Black",
					@"Dark Grey",
					@"Light Grey",
					@"Grey",
					@"White",
					@"Red",
					@"Green",
					@"Blue",
					@"Cyan",
					@"Yellow",
					@"Magenta",
					@"Orange",
					@"Purple",
					@"Brown",
					@"Skyblue",
					@"Lawngreen",
					@"Chocolate",
					[UIColor blackColor],
					[UIColor darkGrayColor],
					[UIColor lightGrayColor],
					[UIColor grayColor],
					[UIColor whiteColor],
					[UIColor redColor],
					[UIColor greenColor],
					[UIColor blueColor],
					[UIColor cyanColor],
					[UIColor yellowColor],
					[UIColor magentaColor],
					[UIColor orangeColor],
					[UIColor purpleColor],
					[UIColor brownColor],
					[UIColor colorWithRed:135.0 / 255.0 green:206.0 / 255.0 blue:235.0 / 255.0 alpha:1.0],
					[UIColor colorWithHue:90.0 / 255.0 saturation:100.0 / 255.0 brightness:99.0 / 255.0 alpha:1.0],
					[UIColor colorWithRed:210.0 / 255.0 green:105.0 / 255.0 blue:30.0 / 255.0 alpha:1.0], nil];
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

#pragma mark -
#pragma mark Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [presetColors count] / 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    [[cell textLabel] setText:[presetColors objectAtIndex:[indexPath row]]];
	[[cell textLabel] setTextColor:[UIColor whiteColor]];
	
	CGRect rect = CGRectMake(0.0, 0.0, 88.0, [tableView rowHeight]);
	
	UIGraphicsBeginImageContext(rect.size);
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	CGContextSetFillColorWithColor(context, [[presetColors objectAtIndex:[presetColors count] / 2 + [indexPath row]] CGColor]);
	
	CGContextFillRect(context, rect);
	
	UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
	
	UIGraphicsEndImageContext();
	
	[[cell imageView] setImage:image];
	[cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    
    return cell;
}

#pragma mark -
#pragma mark Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	
	DisplayBoardAppDelegate * appDel = (DisplayBoardAppDelegate *)[[UIApplication sharedApplication] delegate];
	DisplayBoardViewController * mainView = appDel.viewController;
	FullScreenView * FullScreenViewReference = mainView.fullScreenView;
	
	[FullScreenViewReference.view setBackgroundColor:[presetColors objectAtIndex:[ presetColors count] / 2 + [indexPath row]]];
	
	[tableView deselectRowAtIndexPath:indexPath animated:YES];
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
