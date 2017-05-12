//
//  EventDetailViewController.m
//  Card
//
//  Created by Alice Jin on 10/5/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import "EventDetailViewController.h"
#import "EventOverviewViewController.h"
#import "EventDiscussionViewController.h"
#import "EventPhotoViewController.h"

@interface EventDetailViewController ()

@end

@implementation EventDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    [self addComponents];
    [self addTabButtons];
    //[self addSubviews];
    //EventOverviewViewController *OverviewVC = [[EventOverviewViewController alloc] init];
    //EventDiscussionViewController *DiscussVC = [[EventDiscussionViewController alloc] init];
    //EventPhotoViewController *PhotoVC = [[EventPhotoViewController alloc] init];
}

#pragma mark - childVCs

- (void)addSubviews {
    

    EventOverviewViewController *OverviewVC = [[EventOverviewViewController alloc] init];
    //[self addChildViewController:OverviewVC];
    //[OverviewVC didMoveToParentViewController:self];
    //[self.view addSubview:OverviewVC.view];
    
    EventDiscussionViewController *DiscussionVC = [[EventDiscussionViewController alloc] init];
    //[self addChildViewController:DiscussionVC];
    //[DiscussVC didMoveToParentViewController:self];
    //[self.view addSubview:DiscussVC.view];
    
    EventPhotoViewController *PhotoVC = [[EventPhotoViewController alloc] init];
    //[self addChildViewController:PhotoVC];
    //[PhotoVC didMoveToParentViewController:self];
    //[self.view addSubview:PhotoVC.view];

}



- (void)switchFromOldViewController: (UIViewController *)oldVC toViewController: (UIViewController *)newVC {
    [self addChildViewController:newVC];
    [newVC didMoveToParentViewController:self];
    [self.view addSubview:newVC.view];
    [self transitionFromViewController:oldVC toViewController:newVC duration:0.5 options:UIViewAnimationOptionTransitionCrossDissolve animations:^{
        //[self updateTitles:newVC];
    } completion:^(BOOL finished) {
        //Remove the old view controller and send the final
        //notification of the new view controller
        [oldVC willMoveToParentViewController:nil];
        [oldVC removeFromParentViewController];
        [newVC didMoveToParentViewController:self];
    }];
}

#pragma mark - tabbar
- (void)addTabButtons {
    NSMutableArray *buttonArray = [[NSMutableArray alloc] init];
    NSArray *titleArray = @[@"Overview", @"Discussion", @"Photo"];
    for (int i = 0; i < 3; i++) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [buttonArray addObject:button];
        button.frame = CGRectMake(i * 125, 210, 125, 30);
        button.titleLabel.font = [UIFont boldSystemFontOfSize:18.0];
        [button setTitle:titleArray[i] forState:UIControlStateNormal];
        [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [self.view addSubview:button];
        [button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (IBAction)buttonPressed:(id)sender {
    UIButton *someButton = (UIButton *)sender;
    NSLog(@"This button title is %@", [someButton titleForState:UIControlStateNormal]);
    //EventPhotoViewController *PhotoVC = [[EventPhotoViewController alloc] init];
    //EventDiscussionViewController *DiscussVC = [[EventDiscussionViewController alloc] init];
    if ([someButton.titleLabel.text isEqualToString:@"Overview"]) {
        [self switchFromOldViewController:_OverviewVC toViewController:_DiscussionVC];
    }
}

/*
- (void)buttonPressed:(UIButton *)sender {
    //int index = [sender tag];
    //NSString buttonName = sender.titleLabel.text;
    //NSLog(@"pressed");
    NSLog(@"%d", [(UIButton *)sender tag]);
}
*/

#pragma mark - components setup
- (void)addComponents {
    //set up self view
    //self.view.backgroundColor = [UIColor blackColor];
    
    //add top imageView
    UIImageView *topImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 375, 210)];
    topImageView.image = [UIImage imageNamed:@"cq5dam.thumbnail.540.296.png"];
    topImageView.alpha = 0.5;
    [self.view addSubview:topImageView];
    
    //add black background to imageView
    UIImageView *backgroundImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 375, 210)];
    backgroundImageView.backgroundColor = [UIColor blackColor];
    [self.view  insertSubview:backgroundImageView belowSubview:topImageView];
    
    //add big title
    UILabel *bigTitleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 85, 375, 30)];
    [bigTitleLabel setTextAlignment:NSTextAlignmentCenter];
    bigTitleLabel.backgroundColor = [UIColor clearColor];
    bigTitleLabel.textColor = [UIColor whiteColor];
    [bigTitleLabel setFont:[UIFont boldSystemFontOfSize:20.0]];
    bigTitleLabel.text = @"First Light Meet Up";  //get the big title name from the last page event clicked
    [self.view addSubview:bigTitleLabel];
    
    //add sub title
    UILabel *subTitleLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 115, 375, 30)];
    [subTitleLabel setTextAlignment:NSTextAlignmentCenter];
    subTitleLabel.backgroundColor = [UIColor clearColor];
    subTitleLabel.textColor = [UIColor whiteColor];
    [subTitleLabel setFont:[UIFont italicSystemFontOfSize:18.0]];
    subTitleLabel.text = @"the discription of this event";  //get the sub title name from the last page event clicked
    [self.view addSubview:subTitleLabel];
    
    //add share button
    UIButton *shareButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [shareButton addTarget:self action:@selector(shareAction) forControlEvents:UIControlEventTouchUpInside];
    [shareButton setImage:[UIImage imageNamed:@"ic_forward.png"] forState:UIControlStateNormal];
    shareButton.frame = CGRectMake(270, 160, 30, 30);
    shareButton.backgroundColor = [UIColor clearColor];
    [self.view addSubview:shareButton];
    
    //add calendar button
    UIButton *calendarButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [calendarButton addTarget:self action:@selector(calendarAction) forControlEvents:UIControlEventTouchUpInside];
    [calendarButton setImage:[UIImage imageNamed:@"ic_fa-calendar-check-o.png"] forState:UIControlStateNormal];
    calendarButton.frame = CGRectMake(310, 160, 30, 30);
    //[calendarButton setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    calendarButton.backgroundColor = [UIColor clearColor];
    [self.view addSubview:calendarButton];
}

- (void)shareAction {
    NSLog(@"shareButton clicked");
}

- (void)calendarAction {
    NSLog(@"calendarButton clicked");
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

@end
