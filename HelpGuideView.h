//
//  HelpGuideView.h
//  DisplayBoard
//
//  Created by Sonny on 11/18/10.
//  Copyright (c) 2010 SonsterMedia. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface HelpGuideView : UIViewController {
    IBOutlet UIImageView *imageframe;
	int i;
	BOOL x_exists;
	IBOutlet UIPageControl *pagecontrol;
	
}
-(IBAction)done;
-(IBAction)pushForward;
-(IBAction)pushBackwards;
-(void)ImageFrame:(int) x;

@end
