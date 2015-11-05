//
//  MyConnectViewController.m
//  arnd
//
//  Created by Amirul Islam on 8/25/15.
//  Copyright (c) 2015 Amirul Islam. All rights reserved.
//

#import "MyConnectViewController.h"
#import "MyConnectTableViewCell.h"

@interface MyConnectViewController ()

@end

@implementation MyConnectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSBundle* bundle = [NSBundle bundleForClass:self.class];
    
    UINib* noDataAvailableCellNib = [UINib nibWithNibName:@"MyConnectTableViewCell" bundle:bundle];
    [self.tableView registerNib:noDataAvailableCellNib forCellReuseIdentifier:@"MyConnectTableViewCell"];
    
}


#pragma mark - UITableViewDataSource

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

-(UITableViewCell *) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

        MyConnectTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyConnectTableViewCell" forIndexPath:indexPath];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;

}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Connect" bundle:[NSBundle mainBundle]];
    UIViewController* nav = [storyboard instantiateViewControllerWithIdentifier:@"MyChatVC"];
    nav.modalTransitionStyle = UIModalTransitionStyleCrossDissolve;
    [self presentViewController:nav animated:YES completion:nil];
    
    
}


-(IBAction)allConnection:(id)sender {
    
    
}

-(IBAction)onlineConnections:(id)sender {
    
    
}

-(IBAction)connectedConections:(id)sender {
    
    
}

-(IBAction)groups:(id)sender {
    
    
}

@end
