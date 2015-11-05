//
//  ConnectingViewController.h
//  arnd
//
//  Created by Amirul Islam on 8/25/15.
//  Copyright (c) 2015 Amirul Islam. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "SessionController.h"

@interface ConnectingViewController : UITableViewController /*<SessionControllerDelegate>*/

@property (strong, nonatomic) IBOutlet UIButton *currentUserButton;

@property (strong, nonatomic) IBOutlet UIImageView *currentUserImage;

-(IBAction)loadProfile:(id)sender;


//@property (nonatomic, strong) IBOutlet UITableView *tableView;

@end
