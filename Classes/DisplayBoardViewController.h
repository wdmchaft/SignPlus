//
//  DisplayBoardViewController.h
//  DisplayBoard
//
//  Created by Sonny on 9/22/10.
//  Copyright 2010 SonsterMedia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FullScreenView.h"
#import "BSPreviewScrollView.h"
#import "TapImage.h"


@interface DisplayBoardViewController : UIViewController<BSPreviewScrollViewDelegate>{
	
	
	IBOutlet UITextView *textbox;
	IBOutlet UINavigationBar *navbar;
	FullScreenView * fullScreenView;
	BSPreviewScrollView *scrollViewPreview;	
	NSArray *scrollPages;
	
	
	NSMutableArray *savedArray;
	NSMutableArray *newArray;
}
@property (nonatomic, retain) NSArray *scrollPages;
@property (nonatomic, retain) IBOutlet BSPreviewScrollView *scrollViewPreview;
@property (nonatomic, retain) IBOutlet UITextView *textbox;
@property (nonatomic, retain) IBOutlet UINavigationBar *navbar;

@property (nonatomic, retain) FullScreenView * fullScreenView; // Should have told you to use "retain". My mistake there.
-(IBAction)submit;
-(IBAction)launchAboutView;
-(IBAction)launchHelpScreenView;
-(IBAction)clearTextField;
-(IBAction)fullscreen;

-(void)BeginTempScreenView:(int)index;
@end

