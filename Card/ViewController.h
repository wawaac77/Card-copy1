//
//  ViewController.h
//  Card
//
//  Created by Alice Jin on 15/3/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import <UIKit/UIKit.h>

//#import <HomeUpcomingEventsTableViewCell.h>


@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *HomeUpcomingEventsTableView;
@property (nonatomic, retain) NSArray *UpcomingEventsTiltleArray;
@property (nonatomic, retain) NSArray *UpcomingEventsSubtitleArray;
@property (nonatomic, retain) NSArray *UpcomingEventsTimeArray;
@property (nonatomic, retain) NSArray *UpcomingEventsImageArray;


@end

