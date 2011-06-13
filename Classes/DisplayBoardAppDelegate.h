//
//  DisplayBoardAppDelegate.h
//  DisplayBoard
//
//  Created by Sonny on 9/22/10.
//  Copyright 2010 SonsterMedia. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DisplayBoardViewController;

@interface DisplayBoardAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    DisplayBoardViewController *viewController;

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet DisplayBoardViewController *viewController; // This is all we need here. We can just use this.
@end

