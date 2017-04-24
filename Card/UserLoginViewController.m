//
//  UserLoginViewController.m
//  Card
//
//  Created by Alice Jin on 30/3/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import "UserLoginViewController.h"

@interface UserLoginViewController ()

@end

@implementation UserLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _loginWithFBButton.backgroundColor = [UIColor blueColor];
    _loginWithGoogleButton.backgroundColor = [UIColor redColor];
    //NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    /*
    if (![defaults boolForKey:@"registered"]) {
        NSLog(@"No user registered");
        _loginNextButton.hidden = NO;
    } else {
        NSLog(@"User is registered");
    }
    */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
/*
- (IBAction)loginEmailInput:(id)sender {
    if ([_emailField.text isEqualToString:@""] || [_passwordField.text isEqualToString:@""]) {
        
        UIAlertView *error = [[UIAlertView alloc] initWithTitle:(@"Ooooops") message:@"You must complete all fields" delegate:self cancelButtonTitle:@"ok" otherButtonTitles: nil];
        
        [error show];
    } else {
        [self checkPasswordMatch];
    }
}

- (void) checkPasswordMatch {
    if ([_passwordField.text isEqualToString:_reEnterPasswordField.text]) {
        NSLog(@"Password match!");
        
    }
}
 */

- (IBAction)loginPasswordInput:(id)sender {
}
@end
