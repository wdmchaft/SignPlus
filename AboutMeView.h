//
//  AboutMeView.h
//  DisplayBoard
//
//  Created by Sonny on 11/18/10.
//  Copyright (c) 2010 SonsterMedia. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>
#import "AGMedallionView.h"

@interface AboutMeView : UIViewController <MFMailComposeViewControllerDelegate> {
   IBOutlet AGMedallionView *icon;
}
-(IBAction)done;
-(IBAction)sendMail;
-(IBAction)openSupport;
-(IBAction)openWeb;
-(IBAction)openTwitter;
@end
