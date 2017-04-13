//
//  ViewController.m
//  zuzuSwitch
//
//  Created by Alice Jin on 22/3/2017.
//  Copyright © 2017 Alice Jin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)goToSecond:(id)sender {
    [self performSegueWithIdentifier:@"secondViewSegue" sender:self];
}
@end
