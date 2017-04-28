//
//  RestaurantTableCell.m
//  Card
//
//  Created by Alice Jin on 24/3/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import "RestaurantTableCell.h"

@implementation RestaurantTableCell

//@synthesize restaurantLikedButton;

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


/*
- (IBAction)likedAction:(id)sender {
    if (!liked) {
        [restaurantLikedButton setImage:[UIImage imageNamed:@"ic_fa-heart-on.png"] forState:UIControlStateNormal];
        liked = YES;
    } else if (liked) {
        [restaurantLikedButton setImage:[UIImage imageNamed:@"ic_fa-commenting-o.png"] forState:UIControlStateNormal];
        liked = NO;
    }
}
*/

@end
