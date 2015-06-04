//
//  InboxViewController.m
//  Dropit
//
//  Created by ED on 6/4/15.
//  Copyright (c) 2015 SwiftBeard. All rights reserved.
//

#import "InboxViewController.h"

@interface InboxViewController ()

@end

@implementation InboxViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PFUser *currentUser = [PFUser currentUser];
    
    if (currentUser) {
        NSLog(@"Current user: %@", currentUser.username);
        
    }else {
        [self performSegueWithIdentifier:@"showLogin" sender:self];    }
    
    
  
}



#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}

- (IBAction)logout:(id)sender {
    
    [PFUser logOut];
    [self performSegueWithIdentifier:@"showLogin" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showLogin"]){
        [segue.destinationViewController setHidesBottomBarWhenPushed:YES];
    }
}
@end
