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
#import "TappedView.h"


@interface DisplayBoardViewController : UIViewController<BSPreviewScrollViewDelegate>{
	
	
	IBOutlet UITextView *textbox;
	IBOutlet UINavigationBar *navbar;
	FullScreenView * fullScreenView;
	BSPreviewScrollView *scrollViewPreview;	
	NSArray *scrollPages;
	
	
	NSMutableArray *savedArray;
	NSMutableArray *newArray;
}
@property (nonatomic) NSArray *scrollPages;
@property (nonatomic) IBOutlet BSPreviewScrollView *scrollViewPreview;
@property (nonatomic) IBOutlet UITextView *textbox;
@property (nonatomic) IBOutlet UINavigationBar *navbar;

@property (nonatomic) FullScreenView * fullScreenView;
-(IBAction)submit;
-(IBAction)launchAboutView;
-(IBAction)launchHelpScreenView;
-(IBAction)clearTextField;
-(IBAction)fullscreen;
@end

