//
//  FullScreenView.h
//  DisplayBoard
//
//  Created by Sonny on 9/22/10.
//  Copyright 2010 SonsterMedia. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FullScreenView : UIViewController {
	IBOutlet UILabel *fullscreenLabel;
	NSString *labeltext;
	UIColor *labelcolor;
	IBOutlet UIView *background;
    IBOutlet UIView *views;
	IBOutlet UINavigationBar *nav;
	BOOL navHidden;
    IBOutlet UIBarButtonItem *left;
	
}
@property (nonatomic) IBOutlet UILabel *fullscreenLabel;
@property (nonatomic) NSString *labeltext;
@property (nonatomic) UIColor *labelcolor;
@property (nonatomic) IBOutlet UINavigationBar *nav;
@property (nonatomic) IBOutlet UIView *background;
@property (nonatomic) IBOutlet UIView *views;



-(IBAction)dimiss;
-(IBAction)editTextSettings;
//changes background colors
-(void)colorBlack;
-(void)colorRed;
-(void)colorWhite;
-(void)colorGreen;
-(void)colorBlue;
-(void)colorBlanko;
-(void)colorPureBlack;

-(void)colorRock;
-(void)colorWood;
-(void)colorDesigner;
-(void)colorUnknown;
-(void)colorGrass;


@end
