//
//  TextController.h
//  DisplayBoard
//
//  Created by Sonny on 10/1/10.
//  Copyright 2010 SonsterMedia. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface TextController : UIViewController <UIApplicationDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>{
    NSString *messageLabel;
	IBOutlet UILabel * textcontroller_label;
	UIImagePickerController* imagePickerController;
	IBOutlet UITextField * textfield;
	UISegmentedControl *font_segmentedcontrol;
	UISegmentedControl *textcolor_segmentedcontrol;

	
}
@property (nonatomic,retain) IBOutlet UISegmentedControl *font_segmentedcontrol;
@property (nonatomic,retain) IBOutlet UISegmentedControl *textcolor_segmentedcontrol;
@property (nonatomic,retain) IBOutlet UILabel * textcontroller_label;
@property (nonatomic,retain) NSString *messageLabel;


-(IBAction)textcolor_changed;
-(IBAction)fontsize_changed;
-(IBAction)done;
-(IBAction)ChangeText;
-(IBAction)ColorvalChanged: (id) sender;

//- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo;
//- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker;
//-(IBAction)pickImageFromLibrary;

@end
