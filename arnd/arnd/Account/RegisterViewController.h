//
//  RegisterViewController.h
//  arnd
//
//  Created by Amirul Islam on 8/25/15.
//  Copyright (c) 2015 Amirul Islam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIActionSheetDelegate>


@property (strong, nonatomic) IBOutlet UIButton *currentUserButton;

-(IBAction)registerSubmit:(id)sender;

-(IBAction)close:(id)sender;

-(IBAction)takePhoto:(id)sender;

@end
