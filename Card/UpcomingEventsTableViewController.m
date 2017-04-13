//
//  UpcomingEventsTableViewController.m
//  Card
//
//  Created by Alice Jin on 3/4/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import "UpcomingEventsTableViewController.h"
#import "UpcomingEventsTableViewCell.h"

@interface UpcomingEventsTableViewController ()

@end

@implementation UpcomingEventsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _UpcomingEventsTiltleArray = @[@"Jazz Night Club",@"Board Game & New Year Party",@"Art & Cratt Lover Club",@"Grilled House",@"Alice's wonderland",@"Central Park"];
    _UpcomingEventsSubtitleArray = @[@"Music | 16/20",@"Games | 16/20",@"Arts | 16/20",@"4",@"5",@"6"];
    _UpcomingEventsTimeArray = @[@"20 Oct 18:00  WildFire Steak House", @"20 Oct 18:00  W Hotel Sky Bar", @"20 Oct 18:00  WildFire Steak House", @"20 Oct 18:00  WildFire Steak House", @"20 Oct 18:00  WildFire Steak House", @"20 Oct 18:00  WildFire Steak House"];
    _UpcomingEventsImageArray = @[@"music-vector.jpg", @"event-banner-1036x328--03.jpg", @"event-banner-1036x328-05b.jpg", @"pexels-photo-213661.png", @"pexels-photo-213661.png", @"pexels-photo-213661.png"];

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
    return [_UpcomingEventsTiltleArray count];
}

- (UpcomingEventsTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"UpcomingEventsTableViewCell";
    UpcomingEventsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    //reuse cell
    if (cell == nil) {
        cell = [[UpcomingEventsTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSInteger row = [indexPath row];
    
    cell.UpcomingEventsTitleLabel.text = _UpcomingEventsTiltleArray[row];
    cell.UpcomingEventsSubtitleLabel.text = _UpcomingEventsSubtitleArray[row];
    cell.UpcomingEventsTimeLabel.text = _UpcomingEventsTimeArray[row];
    cell.UpcomingEventsImageView.image = [UIImage imageNamed:_UpcomingEventsImageArray[row]];
    
    return cell;
    
}


 

/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
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
