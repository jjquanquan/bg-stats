//
//  RootViewController.m
//  bg stats
//
//  Created by 卢俊杰 on 2017/6/13.
//  Copyright © 2017年 mine. All rights reserved.
//

#import "RootViewController.h"
#import "OverviewNavigationController.h"
#import "GamesNavigationController.h"
#import "PlayerNavigationController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    [self.tabBar setBarTintColor:[UIColor redColor]];   // 设置tabBar背景色
    
    OverviewNavigationController *overviewNC = [[OverviewNavigationController alloc] customInit];
    overviewNC.tabBarItem.title = NSLocalizedString(@"tabbar_item_title_overview", nil);
    overviewNC.tabBarItem.image = [UIImage imageNamed:@"tabbar_item_overview"];
    
    GamesNavigationController *gamesNC = [[GamesNavigationController alloc] customInit];
    gamesNC.tabBarItem.title = NSLocalizedString(@"tabbar_item_title_games", nil);
    gamesNC.tabBarItem.image = [UIImage imageNamed:@"tabbar_item_games"];
    
    PlayerNavigationController *playerNC = [[PlayerNavigationController alloc] customInit];
    playerNC.tabBarItem.title = NSLocalizedString(@"tabbar_item_title_player", nil);
    playerNC.tabBarItem.image = [UIImage imageNamed:@"tabbar_item_player"];
    
    self.viewControllers = @[overviewNC, gamesNC, playerNC];
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
