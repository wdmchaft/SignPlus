//
//  WebView.h
//  New 2 WIT
//
//  Created by Sonny on 6/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Web : UIViewController <UIWebViewDelegate> {
    
    IBOutlet UIActivityIndicatorView *spinner;
}
@property (nonatomic) NSURL *url;
@property (nonatomic)IBOutlet UIWebView *webView;
@end
