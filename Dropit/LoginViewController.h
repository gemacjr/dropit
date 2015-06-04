//
//  LoginViewController.h
//  Dropit
//
//  Created by ED on 6/4/15.
//  Copyright (c) 2015 SwiftBeard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *usernameField;

@property (weak, nonatomic) IBOutlet UITextField *passwordField;

- (IBAction)login:(id)sender;
@end
