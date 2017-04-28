//
//  RestaurantTableViewController.m
//  Card
//
//  Created by Alice Jin on 23/3/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import "RestaurantTableViewController.h"
#import "RestaurantTableCell.h"

@interface RestaurantTableViewController ()

@end

@implementation RestaurantTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    liked = NO;
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    _restaurantTiltleArray = @[@"Volcano Grill",@"Ginza West",@"Sand Cafe",@"Grilled House",@"Alice's wonderland",@"Central Park"];
    _restaurantLocationArray = @[@"Causeway Bay · 5.3km",@"2432riouwoiewiofcnldsnclnklsajdlkslkdnlkc;naknddf",@"3",@"4",@"5",@"6"];
    _restaurantDescriptionArray = @[@"$100 - 200 per person | Japanese Cuisine", @"$100 - 200 per person | Japanese Cuisine", @"Amarican", @"Korean", @"Chinese", @"Spanish"];
    _restaurantImageArray = @[@"pexels-photo-29346.png", @"pexels-photo-38106.png", @"pexels-photo-62097.png", @"pexels-photo-213661.png", @"pexels-photo-218844.png", @"pexels-photo-260922.png"];
    //_restaurantLiked = @[@"NO", @"NO", @"NO", @"NO", @"NO", @"NO"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_restaurantTiltleArray count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"RestaurantTableCell";
    RestaurantTableCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    //cell.imageView.frame = CGRectMake(0,0,32,32);
    
    //Create UIImages
    NSInteger row = [indexPath row];
    
    cell.restaurantTitleLabel.text = _restaurantTiltleArray[row];
    cell.restaurantLocationLabel.text = _restaurantLocationArray[row];
    cell.restaurantDescriptionLabel.text = _restaurantDescriptionArray[row];
    cell.restaurantTableImageView.image = [UIImage imageNamed:_restaurantImageArray[row]];
    cell.restaurantLikedImageView.image = [UIImage imageNamed:@"ic_fa-heart-o.png"];
    //cell.restaurantLikedButton.imageView.image = [UIImage imageNamed:@"ic_fa-heart.png"];
    [cell.restaurantLikedButton setImage:[UIImage imageNamed:@"ic_fa-heart.png"] forState:UIControlStateNormal];
    //setup for restaurant liked function
    cell.restaurantLikedButton.tag = indexPath.row;
    //[cell.restaurantLikedButton addTarget:self action:@selector(likedButtonClick:) forControlEvents:UIControlEventTouchUpInside];
   
    return cell;
}

/*
- (void)likedButtonClick: (id)sender {
    UIButton *senderButton = (UIButton *) sender;
    RestaurantTableCell *cell = ((RestaurantTableCell *)[sender superview]);
    if (!liked) {
        [cell.restaurantLikedButton setImage:[UIImage imageNamed:@"ic_fa-heart-on.png"] forState:UIControlStateNormal];
        //_restaurantLiked[senderButton.tag] = YES;
    } else if (_restaurantLiked) {
        [cell.restaurantLikedButton setImage:[UIImage imageNamed:@"ic_fa-heart.png"] forState:UIControlStateNormal];
        //_restaurantLiked[senderButton.tag] = NO;
        
    }
    /*
    if (!_restaurantLiked[senderButton.tag]) {
        [cell.restaurantLikedButton setImage:[UIImage imageNamed:@"ic_fa-heart-on.png"] forState:UIControlStateNormal];
        //_restaurantLiked[senderButton.tag] = YES;
    } else if (_restaurantLiked[senderButton.tag]) {
        [cell.restaurantLikedButton setImage:[UIImage imageNamed:@"ic_fa-heart.png"] forState:UIControlStateNormal];
        //_restaurantLiked[senderButton.tag] = NO;
        
    }
 
}
*/



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
