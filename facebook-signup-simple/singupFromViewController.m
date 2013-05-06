//
//  singupFromViewController.m
//  facebook-signup-simple
//
//  Created by apple on 5/6/56 BE.
//  Copyright (c) 2556 apple. All rights reserved.
//

#import "singupFromViewController.h"

@interface singupFromViewController ()

@end

@implementation singupFromViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        [self setTitle:@"Singup narmal form"];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}

- (void)Text
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder ];
    return YES;
}
@end
