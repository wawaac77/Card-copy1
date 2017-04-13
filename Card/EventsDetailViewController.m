//
//  EventsDetailViewController.m
//  Card
//
//  Created by Alice Jin on 27/3/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import "EventsDetailViewController.h"

@interface EventsDetailViewController ()

@end

@implementation EventsDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    /*
    NSInteger segStyle = _layout*4 + _style;
    
    SEL sel = NSSelectorFromString([NSString stringWithFormat:@"segmentStyle%1d", (int)segStyle]);
    if ([self respondsToSelector:sel]) {
        [self performSelector:sel];
    }
     
    */
    // Do any additional setup after loading the view.
}

//create the tableview

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    //cell.textLabel.text = [NSString stringWithFormat:@"cell:%ld",_index];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    UIViewController *vc = [[UIViewController alloc] init];
    vc.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:vc animated:YES];
}

//set the segment style
- (void)segmentStyle1 {
    list = @[@"Attending",
             @"ALice",
             @"Draft",
             @"History",
            ];
    
    /*
    _segHead = [[MLMSegmentHead alloc] initWithFrame:CGRectMake(0, 64, SCREEN_WIDTH, 40) titles:list headStyle:_style layoutStyle:_layout];
    _segHead.fontScale = .85;
    _segHead.fontSize = 14;
    _segHead.lineScale = .9;
    
    _segHead.selectColor = [UIColor yellowColor];
    _segHead.deSelectColor = [UIColor blackColor];
    _segHead.slideColor = [UIColor blackColor];
    
    
    _segScroll = [[MLMSegmentScroll alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_segHead.frame), SCREEN_WIDTH, SCREEN_HEIGHT-CGRectGetMaxY(_segHead.frame)) vcOrViews:[self vcArr:list.count]];
    _segScroll.loadAll = NO;
    _segScroll.showIndex = 2;
    
    [MLMSegmentManager associateHead:_segHead withScroll:_segScroll completion:^{
        [self.view addSubview:_segHead];
        [self.view addSubview:_segScroll];
    }];
     
     */
}

#pragma mark - 数据源
- (NSArray *)vcArr:(NSInteger)count {
    NSMutableArray *arr = [NSMutableArray array];
    for (NSInteger i = 0; i < count; i ++) {
        EventsDetailViewController *vc = [EventsDetailViewController new];
        //vc.index = i;
        [arr addObject:vc];
    }
    return arr;
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

@end
