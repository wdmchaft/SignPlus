//
//  DataSource.h
//  DisplayBoard
//
//  Created by Sonny on 10/15/10.
//  Copyright 2010 SonsterMedia. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface DataSource : NSObject {
	NSString *text;
	UIColor *textcolor;
	float *fontsize;
	
}
-(void)saveData;
-(void)loadData;
@end
