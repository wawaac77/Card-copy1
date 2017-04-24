//
//  ViewController.m
//  Card
//
//  Created by Alice Jin on 15/3/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import "ViewController.h"
#import "HomeUpcomingEventsTableViewCell.h"

@interface ViewController () <UISearchBarDelegate, UISearchDisplayDelegate, UISearchControllerDelegate, UISearchResultsUpdating>

@end

@implementation ViewController

//@synthesize zuzuLabel, zuzuText;
@synthesize HomeUpcomingEventsTableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setSearchBar];
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
    self.tabBarController.tabBar.backgroundColor = [UIColor whiteColor];
    self.tabBarController.tabBar.translucent = NO;
    
    //self.navigationController.navigationBar
    //self.navigationController.searchDisplayController.displaysSearchBarInNavigationBar = YES;
    _UpcomingEventsTiltleArray = @[@"Jazz Night Club",@"Board Game & New Year Party",@"Art & Cratt Lover Club",@"Grilled House",@"Alice's wonderland",@"Central Park"];
    _UpcomingEventsSubtitleArray = @[@"Music | 16/20",@"Games | 16/20",@"Arts | 16/20",@"4",@"5",@"6"];
    _UpcomingEventsTimeArray = @[@"20 Oct 18:00  WildFire Steak House", @"20 Oct 18:00  W Hotel Sky Bar", @"20 Oct 18:00  WildFire Steak House", @"20 Oct 18:00  WildFire Steak House", @"20 Oct 18:00  WildFire Steak House", @"20 Oct 18:00  WildFire Steak House"];
    _UpcomingEventsImageArray = @[@"music-vector.jpg", @"event-banner-1036x328--03.jpg", @"event-banner-1036x328-05b.jpg", @"pexels-photo-213661.png", @"pexels-photo-213661.png", @"pexels-photo-213661.png"];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)setSearchBar {
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(20.0, 0.0, 200.0, 44.0)];
    UIView *searchBarContainer = [[UIView alloc] initWithFrame:searchBar.frame];
    searchBar.userInteractionEnabled = YES;
    [searchBarContainer addSubview:searchBar];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_UpcomingEventsTiltleArray count];
}

- (HomeUpcomingEventsTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    /*
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MainCell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"MainCell"];
    }
    
    cell.textLabel.text = @"Some text";
     */
    
    static NSString *CellIdentifier = @"HomeUpcomingEventsTableViewCell";
    HomeUpcomingEventsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    //reuse cell
    if (cell == nil) {
        cell = [[HomeUpcomingEventsTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSInteger row = [indexPath row];
    
    cell.UpcomingEventsTileLabel.text = _UpcomingEventsTiltleArray[row];
    cell.UpcomingEventsSubtitleLabel.text = _UpcomingEventsSubtitleArray[row];
    cell.UpcomingEventsTimeLabel.text = _UpcomingEventsTimeArray[row];
    cell.UpcomingEventsImageView.image = [UIImage imageNamed:_UpcomingEventsImageArray[row]];
    //cell.UpcomingEventsImageView.alpha = 0.7;
    //cell.UpcomingEventsImageView.backgroundColor = [UIColor blackColor];
    //if (cell.registed) {
    cell.UpcomindEventsRegistSign.image = [UIImage imageNamed:@"ic_fa-calendar-check-o.png"];
    //else {
    //cell.UpcomindEventsRegistSign.image = [UIImage imageNamed:@"ic_fa-calendar-plus-o.png"];
    cell.UpcomingEventsPeopleImageView.image = [UIImage imageNamed:@"ic_fa-users.png"];
    return cell;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



- (IBAction)textFinished:(UITextField *)sender {
    //[zuzuLabel setText:zuzuText.text];
    
    [sender resignFirstResponder];
}

- (IBAction)zuzuButton:(UIButton *)sender {
    
}
@end
