//
//  EventDetailViewController.h
//  Card
//
//  Created by Alice Jin on 10/5/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//


#import <UIKit/UIKit.h>
#import "EventOverviewViewController.h"
#import "EventDiscussionViewController.h"
#import "EventPhotoViewController.h"

@interface EventDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet EventOverviewViewController *OverviewVC;
@property (weak, nonatomic) IBOutlet EventDiscussionViewController *DiscussionVC;
@property (weak, nonatomic) IBOutlet EventPhotoViewController *PhotoVC;
//EventOverviewViewController *OverviewVC = [[EventOverviewViewController alloc] init];
//EventDiscussionViewController *DiscussVC = [[EventDiscussionViewController alloc] init];
//EventPhotoViewController *PhotoVC = [[EventPhotoViewController alloc] init];


@end

