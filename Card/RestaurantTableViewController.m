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
    
    _restaurantTiltleArray = @[@"Volcano Grill",@"Ginza West",@"Sand Cafe",@"Grilled House",@"Alice's wonderland",@"Central Park"];
    _restaurantLocationArray = @[@"Causeway Bay · 5.3km",@"2432riouwoiewiofcnldsnclnklsajdlkslkdnlkc;naknddf",@"3",@"4",@"5",@"6"];
    _restaurantDescriptionArray = @[@"$100 - 200 per person | Japanese Cuisine", @"$100 - 200 per person | Japanese Cuisine", @"Amarican", @"Korean", @"Chinese", @"Spanish"];
    _restaurantImageArray = @[@"pexels-photo-29346.png", @"pexels-photo-38106.png", @"pexels-photo-62097.png", @"pexels-photo-213661.png", @"pexels-photo-218844.png", @"pexels-photo-260922.png"];

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
    /*
    UIImage *restaurantImage1 = [UIImage imageNamed:@"Free-Converter.com-food-salad-restaurant-person-2274527.png"];
    UIImage *restaurantImage2 = [UIImage imageNamed:@"pexels-photo.png"];
    UIImage *restaurantImage3 = [UIImage imageNamed:@"pexels-photo-213661.png"];
    
    //Set the image in the row
    
    
    switch (indexPath.row) {
        case 0:
            cell.imageView.image = restaurantImage1;
            break;
        
        case 1:
            cell.imageView.image = restaurantImage1;
            break;
            
        case 2:
            cell.imageView.image = restaurantImage3;
            break;

            
        default:
            cell.imageView.image = restaurantImage2;
            break;
    }
    //cell.restaurantImage.image = restaurantImage1;
    
    
    cell.textLabel.text = [self.restaurantTiltleObjectsArray objectAtIndex:indexPath.row];
    cell.detailTextLabel.text = [self.restaurantSubtiltleObjectsArray objectAtIndex:indexPath.row];
     
    */
    
    return cell;
}


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
