//
//  UpcomingEventsTableViewCell.h
//  Card
//
//  Created by Alice Jin on 5/4/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UpcomingEventsTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *UpcomingEventsTitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *UpcomingEventsSubtitleLabel;
@property (weak, nonatomic) IBOutlet UILabel *UpcomingEventsTimeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *UpcomingEventsImageView;

@end
