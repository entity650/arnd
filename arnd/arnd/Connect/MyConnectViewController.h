//
//  MyConnectViewController.h
//  arnd
//
//  Created by Amirul Islam on 8/25/15.
//  Copyright (c) 2015 Amirul Islam. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyConnectViewController : UIViewController

@property (nonatomic, strong) IBOutlet UITableView *tableView;

-(IBAction)allConnection:(id)sender;
-(IBAction)onlineConnections:(id)sender;
-(IBAction)connectedConections:(id)sender;
-(IBAction)groups:(id)sender;

@end
