//
//  RestaurantTableViewController.h
//  Card
//
//  Created by Alice Jin on 23/3/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RestaurantTableViewController : UITableViewController<UITableViewDelegate, UITableViewDataSource> {
    BOOL liked;
}

@property (nonatomic, retain) NSArray *restaurantTiltleArray;
@property (nonatomic, retain) NSArray *restaurantLocationArray;
@property (nonatomic, retain) NSArray *restaurantDescriptionArray;
@property (nonatomic, retain) NSArray *restaurantImageArray;
@property (nonatomic, retain) NSArray *restaurantLiked;

@end
