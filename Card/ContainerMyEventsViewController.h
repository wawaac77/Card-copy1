//
//  ContainerMyEventsViewController.h
//  Card
//
//  Created by Alice Jin on 9/5/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContainerMyEventsViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIView *AttendingContainer;
@property (weak, nonatomic) IBOutlet UIView *HostingContainer;
@property (weak, nonatomic) IBOutlet UIView *DraftContainer;
@property (weak, nonatomic) IBOutlet UIView *HistoryContainer;

@property (weak, nonatomic) IBOutlet UIButton *AttendingButton;
@property (weak, nonatomic) IBOutlet UIButton *HostingButton;
@property (weak, nonatomic) IBOutlet UIButton *DraftButton;
@property (weak, nonatomic) IBOutlet UIButton *HistoryButton;

- (IBAction)AttendingAction:(id)sender;
- (IBAction)HostingAction:(id)sender;
- (IBAction)DraftAction:(id)sender;
- (IBAction)HistoryAction:(id)sender;

@end
