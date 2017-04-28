//
//  RestaurantTableCell.h
//  Card
//
//  Created by Alice Jin on 24/3/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RestaurantTableCell : UITableViewCell {
    //BOOL liked;
}

@property (strong, nonatomic)IBOutlet UILabel *restaurantTitleLabel;
@property (strong, nonatomic)IBOutlet UILabel *restaurantLocationLabel;
@property (strong, nonatomic)IBOutlet UILabel *restaurantDescriptionLabel;
@property (strong, nonatomic)IBOutlet UIImageView *restaurantTableImageView;
@property (strong, nonatomic)IBOutlet UIImageView *restaurantLikedImageView;
@property (weak, nonatomic) IBOutlet UIButton *restaurantLikedButton;
//- (IBAction)likedAction:(id)sender;

@end
