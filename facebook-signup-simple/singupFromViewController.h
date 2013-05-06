//
//  singupFromViewController.h
//  facebook-signup-simple
//
//  Created by apple on 5/6/56 BE.
//  Copyright (c) 2556 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FacebookSDK/FacebookSDK.h>
#import "UserModel.h"
@interface singupFromViewController : UIViewController <UITextFieldDelegate>
@property (strong,nonatomic) UserModel *user;
@property (strong, nonatomic) IBOutlet UITextField *usernameText;
@property (strong, nonatomic) IBOutlet UITextField *passwordText;
@property (strong, nonatomic) IBOutlet UITextField *firstnameText;
@property (strong, nonatomic) IBOutlet UITextField *lastnameText;

@end
