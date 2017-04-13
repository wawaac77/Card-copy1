//
//  SocialEventsTableViewCell.h
//  Card
//
//  Created by Alice Jin on 5/4/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SocialEventsTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *SocialEventTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *SocialEventTimeLabel;
@property (weak, nonatomic) IBOutlet UILabel *SocialEventPeoplePlaceLabel;
@property (weak, nonatomic) IBOutlet UILabel *SocialEventsXPLabel;
@property (weak, nonatomic) IBOutlet UIButton *SocialEventCancelButton;
@property (weak, nonatomic) IBOutlet UILabel *SocialEventPossibleLabel;

@end
