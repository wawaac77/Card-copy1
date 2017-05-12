//
//  MyEventsViewController.m
//  Card
//
//  Created by Alice Jin on 26/4/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import "MyEventsViewController.h"
#import "SocialAttendingViewController.h"
#import "SocialHostingViewController.h"
#import "SocialDraftViewController.h"
#import "SocialHistoryViewController.h"

@interface MyEventsViewController ()

@end

@implementation MyEventsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addSubviews {
    SocialAttendingViewController *AttendingVC = [[SocialAttendingViewController alloc] init];
    [self addChildViewController:AttendingVC];
    [AttendingVC didMoveToParentViewController:self];
    [self.view addSubview:AttendingVC.view];
    
    SocialHostingViewController *HostingVC = [[SocialHostingViewController alloc] init];
    [self addChildViewController:HostingVC];
    [HostingVC didMoveToParentViewController:self];
    [self.view addSubview:HostingVC.view];
    
    SocialDraftViewController *DraftVC = [[SocialDraftViewController alloc] init];
    [self addChildViewController:DraftVC];
    [DraftVC didMoveToParentViewController:self];
    [self.view addSubview:DraftVC.view];
    
    SocialHistoryViewController *HistoryVC = [[SocialHistoryViewController alloc] init];
    [self addChildViewController:HistoryVC];
    [HistoryVC didMoveToParentViewController:self];
    [self.view addSubview:HistoryVC.view];
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
- (IBAction)firstAction:(id)sender {
    _firstContainer.alpha = 1.0;
    _secondContainer.alpha = 0.0;
    _thirdContainer.alpha = 0.0;
    _forthContainer.alpha = 0.0;
}

- (IBAction)secondAction:(id)sender {
    _firstContainer.alpha = 0.0;
    _secondContainer.alpha = 1.0;
    _thirdContainer.alpha = 0.0;
    _forthContainer.alpha = 0.0;
}
- (IBAction)thirdAction:(id)sender {
    _firstContainer.alpha = 0.0;
    _secondContainer.alpha = 0.0;
    _thirdContainer.alpha = 1.0;
    _forthContainer.alpha = 0.0;
}

- (IBAction)forthAction:(id)sender {
    _firstContainer.alpha = 0.0;
    _secondContainer.alpha = 0.0;
    _thirdContainer.alpha = 0.0;
    _forthContainer.alpha = 1.0;
}
 */

@end
