//
//  ViewController.m
//  facebook-signup-simple
//
//  Created by apple on 5/6/56 BE.
//  Copyright (c) 2556 apple. All rights reserved.
//

#import "ViewController.h"
#import "singupFromViewController.h"
@interface ViewController ()

@end

@implementation ViewController
@synthesize loginView = _loginView;
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"Main Signup"];
    
    _signupForm = [[singupFromViewController alloc]initWithNibName:@"singupFromViewController" bundle:nil];
	// Do any additional setup after loading the view, typically from a nib.
    
    //FBLoginView *loginView = [[FBLoginView alloc] init];
    //loginView.frame = CGRectOffset(loginView.frame, 5,5);
    _loginView.delegate = self;
    [_loginView sizeToFit ];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)singupWithFacebook:(id)sender {
}

- (IBAction)signupNarmal:(id)sender {

    [self.navigationController pushViewController:_signupForm animated:YES ];
}
@end
