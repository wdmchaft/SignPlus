//
//  TapImage.m
//
//  Created by Björn Sållarp on 7/14/10.
//  NO Copyright 2010 MightyLittle Industries. NO rights reserved.
// 
//  Use this code any way you like. If you do like it, please
//  link to my blog and/or write a friendly comment. Thank you!
//
//  Read my blog @ http://blog.sallarp.com
//

#import "TapImage.h"
#import "FullScreenView.h"
#import "DisplayBoardViewController.h"
#import "DisplayBoardAppDelegate.h"

@implementation TapImage
@synthesize positioninArray;

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	
	
	UITouch *touch = [touches anyObject];
	NSUInteger tapCount = [touch tapCount];
	
	if (tapCount == 2)
	{	
	
	NSLog(@"HERE");
	DisplayBoardAppDelegate * appDel = (DisplayBoardAppDelegate *)[[UIApplication sharedApplication] delegate];
	DisplayBoardViewController * mainView = appDel.viewController;
	[mainView BeginTempScreenView:positioninArray];	
	}	
		
}

@end
