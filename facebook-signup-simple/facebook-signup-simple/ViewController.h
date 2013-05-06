//
//  ViewController.h
//  facebook-signup-simple
//
//  Created by apple on 5/6/56 BE.
//  Copyright (c) 2556 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "singupFromViewController.h"
#import <FacebookSDK/FacebookSDK.h>
@interface ViewController : UIViewController <FBLoginViewDelegate>
{
@private
    
    singupFromViewController *_signupForm;
    
    
}
- (IBAction)singupWithFacebook:(id)sender;
@property (strong, nonatomic) IBOutlet FBLoginView *loginView;
- (IBAction)signupNarmal:(id)sender;
@end
