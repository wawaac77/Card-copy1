//
//  HomeUpcomingEventsTableViewCell.h
//  Card
//
//  Created by Alice Jin on 3/4/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeUpcomingEventsTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *UpcomingEventsTileLabel;
@property (weak, nonatomic) IBOutlet UILabel *UpcomingEventsSubtitleLabel;

@property (weak, nonatomic) IBOutlet UILabel *UpcomingEventsTimeLabel;
@property (weak, nonatomic) IBOutlet UIImageView *UpcomingEventsImageView;
@property (weak, nonatomic) IBOutlet UIImageView *UpcomindEventsRegistSign;
@property (weak, nonatomic) IBOutlet UIImageView *UpcomingEventsPeopleImageView;


@end
