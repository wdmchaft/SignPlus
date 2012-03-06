//
//  TextController.h
//  DisplayBoard
//
//  Created by Sonny on 10/1/10.
//  Copyright 2010 SonsterMedia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TextController : UIViewController <UIApplicationDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource>
{
	NSArray *presetColors;
    NSString *messageLabel;
	IBOutlet UILabel * textcontroller_label;
	UIImagePickerController* imagePickerController;
	IBOutlet UITextField * textfield;
	UISegmentedControl *font_segmentedcontrol;
	UISegmentedControl *textcolor_segmentedcontrol;

	
}
@property (nonatomic) IBOutlet UISegmentedControl *font_segmentedcontrol;
@property (nonatomic) IBOutlet UISegmentedControl *textcolor_segmentedcontrol;
@property (nonatomic) IBOutlet UILabel * textcontroller_label;
@property (nonatomic) NSString *messageLabel;


-(IBAction)textcolor_changed;
-(IBAction)fontsize_changed;
-(IBAction)done;
-(IBAction)ChangeText;


@end
