//
//  OverviewNavigationController.m
//  bg stats
//
//  Created by 卢俊杰 on 2017/8/22.
//  Copyright © 2017年 mine. All rights reserved.
//

#import "OverviewNavigationController.h"
#import "OverviewViewController.h"

@interface OverviewNavigationController ()

@end

@implementation OverviewNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)customInit {
    OverviewViewController *overviewVC = [[OverviewViewController alloc] init];
    return [super initWithRootViewController:overviewVC];
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
