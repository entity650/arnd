//
//  ConnectingViewController.m
//  arnd
//
//  Created by Amirul Islam on 8/25/15.
//  Copyright (c) 2015 Amirul Islam. All rights reserved.
//

#import "ConnectingViewController.h"

@interface ConnectingViewController ()
//@property (nonatomic, strong) SessionController *sessionController;
@end

@implementation ConnectingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.currentUserImage.userInteractionEnabled = YES;
    
    UIGestureRecognizer *tapper = [[UITapGestureRecognizer alloc]
                                   initWithTarget:self action:@selector(singleTapping:)];
    tapper.cancelsTouchesInView = NO;
    [self.currentUserImage addGestureRecognizer:tapper];
    
//    _sessionController = [[SessionController alloc] init];
//    self.sessionController.delegate = self;
    
  //  self.title = [NSString stringWithFormat:@"MCSession: %@", self.sessionController.displayName];
    
}

-(void)singleTapping:(UIGestureRecognizer *)recognizer
{

    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Connect" bundle:[NSBundle mainBundle]];
    UIViewController* nav = [storyboard instantiateViewControllerWithIdentifier:@"MyConnectVC"];
    nav.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:nav animated:YES completion:nil];
    
}


-(IBAction)loadProfile:(id)sender {
    
    
}


/*

#pragma mark - SessionControllerDelegate protocol conformance

- (void)sessionDidChangeState
{
    // Ensure UI updates occur on the main queue.
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadData];
    });
}

#pragma mark - UITableViewDataSource protocol conformance

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // We have 3 sections in our grouped table view,
    // one for each MCSessionState
    return 3;
}

- (NSInteger)tableView:(UITableView *)table numberOfRowsInSection:(NSInteger)section
{
    NSInteger rows = 0;
    
    // Each tableView section represents an MCSessionState
    MCSessionState sessionState = section;
    
    switch (sessionState)
    {
        case MCSessionStateConnecting:
        {
            rows = self.sessionController.connectingPeers.count;
            break;
        }
            
        case MCSessionStateConnected:
        {
            rows = self.sessionController.connectedPeers.count;
            break;
        }
            
        case MCSessionStateNotConnected:
        {
            rows = self.sessionController.disconnectedPeers.count;
            break;
        }
    }
    
    // Always show at least 1 row for each MCSessionState.
    if (rows < 1)
    {
        rows = 1;
    }
    
    return rows;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    // Each tableView section represents an MCSessionState
    MCSessionState sessionState = section;
    
    return [self.sessionController stringForPeerConnectionState:sessionState];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    cell.textLabel.text = @"None";
    
    NSArray *peers = nil;
    
    // Each tableView section represents an MCSessionState
    MCSessionState sessionState = indexPath.section;
    NSInteger peerIndex = indexPath.row;
    
    switch (sessionState)
    {
        case MCSessionStateConnecting:
        {
            peers = self.sessionController.connectingPeers;
            break;
        }
            
        case MCSessionStateConnected:
        {
            peers = self.sessionController.connectedPeers;
            break;
        }
            
        case MCSessionStateNotConnected:
        {
            peers = self.sessionController.disconnectedPeers;
            break;
        }
    }
    
    if ((peers.count > 0) && (peerIndex < peers.count))
    {
        MCPeerID *peerID = [peers objectAtIndex:peerIndex];
        
        if (peerID)
        {
            cell.textLabel.text = peerID.displayName;
        }
    }
    
    return cell;
}

*/

@end
