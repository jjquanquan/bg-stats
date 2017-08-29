//
//  PlayerNavigationController.m
//  bg stats
//
//  Created by 卢俊杰 on 2017/8/23.
//  Copyright © 2017年 mine. All rights reserved.
//

#import "PlayerNavigationController.h"
#import "PlayerViewController.h"

@interface PlayerNavigationController ()

@end

@implementation PlayerNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (instancetype)customInit {
    PlayerViewController *playerVC = [[PlayerViewController alloc] init];
    return [super initWithRootViewController:playerVC];
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
