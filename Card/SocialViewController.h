//
//  SocialViewController.h
//  Card
//
//  Created by Alice Jin on 21/3/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SocialViewController : UIViewController <UITableViewDataSource, UITableViewDelegate> {


    //__weak IBOutlet UISegmentedControl *socialSegmentControl;
    __weak IBOutlet UILabel *socialLabel;
}

@property (weak, nonatomic) IBOutlet UITableView *SocialEventsTable;
// - (IBAction)socialChangeSegmentControl:(id)sender;
- (IBAction)socialChangeSegmentControl:(id)sender;

@property (nonatomic, retain) NSArray *SocialEventTiltleArray;
@property (nonatomic, retain) NSArray *SocialEventTimeArray;
@property (nonatomic, retain) NSArray *SocialEventPeoplePlaceArray;
@property (nonatomic, retain) NSArray *SocialEventXPArray;

@property (weak, nonatomic) IBOutlet UIButton *SocialAttendingButton;
@end
