//
//  EventDiscussionViewController.m
//  Card
//
//  Created by Alice Jin on 10/5/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import "EventDiscussionViewController.h"

@interface EventDiscussionViewController ()

@end

@implementation EventDiscussionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)willMoveToParentViewController:(UIViewController *)parent {
    NSLog(@"Discuss ViewController moving to or from parent view controller");
    self.view.backgroundColor = [UIColor redColor];
}

-(void)didMoveToParentViewController:(UIViewController *)parent {
    NSLog(@"Discuss ViewController did move to or from parent view controller");
    self.view.frame = CGRectMake(0, 250, 300, 50);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
