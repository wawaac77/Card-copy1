//
//  UserLoginViewController.h
//  Card
//
//  Created by Alice Jin on 30/3/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserLoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UIButton *forgetPasswordButton;
@property (weak, nonatomic) IBOutlet UIButton *loginNextButton;
@property (weak, nonatomic) IBOutlet UIButton *loginWithFBButton;
@property (weak, nonatomic) IBOutlet UIButton *loginWithGoogleButton;
- (IBAction)loginEmailInput:(id)sender;
- (IBAction)loginPasswordInput:(id)sender;

@end
