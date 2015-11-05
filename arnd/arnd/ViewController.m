//
//  ViewController.m
//  arnd
//
//  Created by Amirul Islam on 8/25/15.
//  Copyright (c) 2015 Amirul Islam. All rights reserved.
//

#import "ViewController.h"
#import <Parse/Parse.h>
#import <ParseFacebookUtils/PFFacebookUtils.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
  //  [self startSession];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void) startSession
{
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    UIViewController* nav = [storyboard instantiateViewControllerWithIdentifier:@"StartSessionVC"];
    nav.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:nav animated:YES completion:nil];
    
}


-(IBAction)registerUsingArnd:(id)sender {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Accounts" bundle:[NSBundle mainBundle]];
    UIViewController* nav = [storyboard instantiateViewControllerWithIdentifier:@"RegisterVC"];
    nav.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:nav animated:YES completion:nil];
}

-(IBAction)registerUsingFacebook:(id)sender {
    
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Connect" bundle:[NSBundle mainBundle]];
//    UIViewController* nav = [storyboard instantiateViewControllerWithIdentifier:@"ConnectingVC"];
//    nav.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
//    [self presentViewController:nav animated:YES completion:nil];
    
    NSArray *permissionsArray = @[ @"user_about_me", @"user_relationships", @"user_birthday", @"user_location"];
    
    // Login PFUser using Facebook
    [PFFacebookUtils logInWithPermissions:permissionsArray block:^(PFUser *user, NSError *error) {
       // [_activityIndicator stopAnimating]; // Hide loading indicator
        
        if (!user) {
            NSString *errorMessage = nil;
            if (!error) {
                NSLog(@"Uh oh. The user cancelled the Facebook login.");
                errorMessage = @"Uh oh. The user cancelled the Facebook login.";
            } else {
                NSLog(@"Uh oh. An error occurred: %@", error);
                errorMessage = [error localizedDescription];
            }
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Log In Error"
                                                            message:errorMessage
                                                           delegate:nil
                                                  cancelButtonTitle:nil
                                                  otherButtonTitles:@"Dismiss", nil];
            [alert show];
        } else {
            if (user.isNew) {
                NSLog(@"User with facebook signed up and logged in!");
            } else {
                NSLog(@"User with facebook logged in!");
            }
           // [self _presentUserDetailsViewControllerAnimated:YES];
        }
    }];
    
 //   [_activityIndicator startAnimating]; // Show loading indicator until login is finished
    
}
@end
