//
//  ViewController.m
//  facebook-signup-simple
//
//  Created by apple on 5/6/56 BE.
//  Copyright (c) 2556 apple. All rights reserved.
//

#import "ViewController.h"
#import "singupFromViewController.h"
#import "UserModel.h"
@interface ViewController ()

@end

@implementation ViewController
-(id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
   
     self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if(self)
    {
       
        _signupForm = [[singupFromViewController alloc]initWithNibName:@"singupFromViewController" bundle:nil];

    }
    
    return self;
    
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"Main Signup"];
    
    	// Do any additional setup after loading the view, typically from a nib.
    
    FBLoginView *loginView = [[FBLoginView alloc] init];
    loginView.frame = CGRectOffset(loginView.frame, 80,230);
    loginView.delegate = self;
    [self.view addSubview:loginView ];
    [loginView sizeToFit ];
  
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
    UserModel *userModel = [[UserModel alloc]init];
       
    [_signupForm setUser:userModel];
    
    ///[self.navigationController pushViewController:_signupForm animated:YES ];
}

#pragma mark - FBLoginViewDelegate

- (void)loginViewShowingLoggedInUser:(FBLoginView *)loginView {
    // first get the buttons set for login mode

    NSLog(@"---loginViewShowingLoggedInUser");
    [self.navigationController pushViewController:_signupForm animated:YES ];
}

- (void)loginViewFetchedUserInfo:(FBLoginView *)loginView
                            user:(id<FBGraphUser>)user {
    
     NSLog(@"UserInfo: %@",[user debugDescription]);
    UserModel *userModel = [[UserModel alloc]init];
    userModel.fristname = user.first_name;
    userModel.lastname = user.last_name;
    userModel.username = user.id;
    
    
    [_signupForm setUser:userModel];
   
   ///[self.navigationController pushViewController:_signupForm animated:YES ];
    }

- (void)loginViewShowingLoggedOutUser:(FBLoginView *)loginView {

}

- (void)loginView:(FBLoginView *)loginView handleError:(NSError *)error {
    
    
    
    NSLog(@"FBLoginView encountered an error=%@", error);
}


@end
