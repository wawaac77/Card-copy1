//
//  SocialViewController.m
//  Card
//
//  Created by Alice Jin on 21/3/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import "SocialViewController.h"
#import "SocialEventsTableViewCell.h"

@interface SocialViewController ()

@end

@implementation SocialViewController
@synthesize SocialEventsTable;

- (void)viewDidLoad {
    [super viewDidLoad];
    _SocialEventTiltleArray = @[@"Disco Dancing Fun Wednesday",@"Steak Thursday",@"Xmas Party 2016",@"Disco Dancing Fun Wednesday",@"Xmas Party 2016",@"Central Park",@"Central Park",@"Central Park",@"Central Park",@"Central Park"];
    _SocialEventTimeArray = @[@"20 Oct 18:00",@"20 Dec 18:00",@"20 Dec 18:00",@"20 Dec 18:00",@"20 Jan 15:00",@"20 Jan 15:00",@"20 Jan 15:00",@"20 Jan 15:00",@" 20 Jan 15:00",@"20 Jan 15:00"];
    _SocialEventPeoplePlaceArray = @[@"16/20  WildFire Steak House", @"16/20  W Hotel Sky Bar", @"5/10  WildFire Steak House", @"6/8  WildFire Steak House", @"20 Oct 18:00  WildFire Steak House", @"20 Oct 18:00  WildFire Steak House"];
    _SocialEventXPArray = @[@"+10 XP", @"+10 XP",@"+10 XP",@"+10 XP",@"+10 XP",@"+10 XP",@"+10 XP",@"+10 XP",@"+10 XP",@"+10 XP",];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_SocialEventTiltleArray count];
}

- (SocialEventsTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"SocialEventsInformationCell";
    SocialEventsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    //reuse cell
    if (cell == nil) {
        cell = [[SocialEventsTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    NSInteger row = [indexPath row];
    
    cell.SocialEventTitleLabel.text = _SocialEventTiltleArray[row];
    cell.SocialEventTimeLabel.text = _SocialEventTimeArray[row];
    cell.SocialEventPeoplePlaceLabel.text = _SocialEventPeoplePlaceArray[row];
    cell.SocialEventsXPLabel.text = _SocialEventXPArray[row];

       //if (cell.registed) {
    return cell;
}


- (IBAction)socialChangeSegmentControl:(id)sender {
    if (socialSegmentControl.selectedSegmentIndex == 0) {
        socialLabel.text = @"Attending";
    } else if (socialSegmentControl.selectedSegmentIndex == 1) {
        socialLabel.text = @"Hosting";
    } else if (socialSegmentControl.selectedSegmentIndex == 2) {
        socialLabel.text = @"Draft";
    } else if (socialSegmentControl.selectedSegmentIndex == 3) {
        socialLabel.text = @"History";
    }
}
@end
