//
//  singupFromViewController.m
//  facebook-signup-simple
//
//  Created by apple on 5/6/56 BE.
//  Copyright (c) 2556 apple. All rights reserved.
//

#import "singupFromViewController.h"
#import "UserModel.h"
@interface singupFromViewController ()

@end

@implementation singupFromViewController
@synthesize user = _user;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self setTitle:@"Singup Form"];
        


    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.firstnameText.delegate = self;
    self.lastnameText.delegate = self;
    self.usernameText.delegate = self;
    self.passwordText.delegate = self;
    
}
-(void)setUser:(UserModel *)user
{
    NSLog(@"setUser");
    _user = user;
    
    self.firstnameText.text = user.fristname;
    self.lastnameText.text = user.lastname;
    self.usernameText.text = user.username;
    
    //NSLog(@"userName:%@",user.fristname);
}


- (void)Text
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    
    //NSLog(@"%s", __FUNCTION__);
    
    bool fDidResign = [textField resignFirstResponder];
    return fDidResign;
}
@end
