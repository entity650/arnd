//
//  RegisterViewController.m
//  arnd
//
//  Created by Amirul Islam on 8/25/15.
//  Copyright (c) 2015 Amirul Islam. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController () {
    UIImageView *imageCaptured;
    NSData *imageData;
}

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.currentUserButton.layer.cornerRadius = 20;
    self.currentUserButton.clipsToBounds = YES;
    
}

-(IBAction)takePhoto:(id)sender {
    
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:nil
                                                             delegate:self
                                                    cancelButtonTitle:nil
                                               destructiveButtonTitle:nil
                                                    otherButtonTitles:nil, nil];
    
    [actionSheet addButtonWithTitle:@"Take Photo"];
    [actionSheet addButtonWithTitle:@"Choose Existing Photo"];
    [actionSheet addButtonWithTitle:@"Cancel"];
    actionSheet.cancelButtonIndex = actionSheet.numberOfButtons - 1;
    [actionSheet showInView:self.view];
    
}


#pragma mark UIActionSheetDelegate
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    int i = (int)buttonIndex;
    switch(i)
    {
        case 0:
        {
            UIImagePickerController * picker = [[UIImagePickerController alloc] init];
            picker.delegate = self;
            picker.sourceType = UIImagePickerControllerSourceTypeCamera;
            picker.cameraDevice = UIImagePickerControllerCameraDeviceFront;
            picker.allowsEditing = YES;
            [self presentViewController:picker animated:YES completion:^{}];
            break;
        }
        case 1:
        {
            UIImagePickerController * picker = [[UIImagePickerController alloc] init];
            picker.delegate = self;
            picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
            picker.allowsEditing = YES;
            [self presentViewController:picker animated:YES completion:^{}];
            break;
        }
        default:
            // Do nothing here
            break;
    }
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editInfo{
    
    [picker dismissViewControllerAnimated:YES completion:nil];
    
    imageCaptured = [editInfo objectForKey:@"UIImagePickerControllerOriginalImage"];
    imageData = UIImagePNGRepresentation(image);
    UIImage *tmpImage = [UIImage imageWithData:imageData];
    [self.currentUserButton setImage:tmpImage forState:UIControlStateNormal];
}

-(IBAction)registerSubmit:(id)sender {
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Connect" bundle:[NSBundle mainBundle]];
    UIViewController* nav = [storyboard instantiateViewControllerWithIdentifier:@"MyConnectVC"];
    nav.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:nav animated:YES completion:nil];
    
}

-(IBAction)close:(id)sender {
    
}


@end
