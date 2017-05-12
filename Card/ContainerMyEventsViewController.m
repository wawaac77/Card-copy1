//
//  ContainerMyEventsViewController.m
//  Card
//
//  Created by Alice Jin on 9/5/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import "ContainerMyEventsViewController.h"

@interface ContainerMyEventsViewController ()

@end

@implementation ContainerMyEventsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupLayout];
}

- (void)setupLayout {
    //[_AttendingButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    _AttendingContainer.frame = CGRectMake(0, 46, 375, 508);
    _HostingContainer.frame = CGRectMake(0, 46, 375, 508);
    _DraftContainer.frame = CGRectMake(0, 46, 375, 508);
    _HistoryContainer.frame = CGRectMake(0, 46, 375, 508);
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

- (IBAction)AttendingAction:(id)sender {
    [_AttendingButton setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [_HostingButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_DraftButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_HistoryButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];

    _AttendingButton.tintColor = [UIColor blackColor];
    _AttendingContainer.alpha = 1.0;
    _HostingContainer.alpha = 0.0;
    _DraftContainer.alpha = 0.0;
    _HistoryContainer.alpha = 0.0;
}

- (IBAction)HostingAction:(id)sender {
    [_AttendingButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_HostingButton setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [_DraftButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_HistoryButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
  
    _AttendingContainer.alpha = 0.0;
    _HostingContainer.alpha = 1.0;
    _DraftContainer.alpha = 0.0;
    _HistoryContainer.alpha = 0.0;

}

- (IBAction)DraftAction:(id)sender {
    [_AttendingButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_HostingButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_DraftButton setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [_HistoryButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    
    _AttendingContainer.alpha = 0.0;
    _HostingContainer.alpha = 0.0;
    _DraftContainer.alpha = 1.0;
    _HistoryContainer.alpha = 0.0;
}

- (IBAction)HistoryAction:(id)sender {
    [_AttendingButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_HostingButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_DraftButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_HistoryButton setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    
    _AttendingContainer.alpha = 0.0;
    _HostingContainer.alpha = 0.0;
    _DraftContainer.alpha = 0.0;
    _HistoryContainer.alpha = 1.0;
}


@end
