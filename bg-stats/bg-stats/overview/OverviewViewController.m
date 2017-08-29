//
//  OverviewViewController.m
//  bg stats
//
//  Created by 卢俊杰 on 2017/8/14.
//  Copyright © 2017年 mine. All rights reserved.
//

#import "OverviewViewController.h"
#import "SettingViewController.h"

@interface OverviewViewController ()

@end

@implementation OverviewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.view.backgroundColor = [UIColor grayColor];
    
    self.navigationItem.title = NSLocalizedString(@"overview_navigationbar_item_title_boardgamestats", nil);
    
    UIBarButtonItem *settingBarButton = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"overview_navi_setting"]
                                                                         style:UIBarButtonItemStylePlain
                                                                        target:self
                                                                        action:@selector(settingBarButonClickAction)];
    self.navigationItem.leftBarButtonItem = settingBarButton;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 导航栏按钮点击事件
- (void)settingBarButonClickAction {
    UIBarButtonItem *doneBarButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"global_button_done", nil)
                                                                      style:UIBarButtonItemStylePlain
                                                                     target:nil
                                                                     action:nil];
    self.navigationItem.backBarButtonItem = doneBarButton;  // 只能在父视图（这里）修改
    
    SettingViewController *settingVC = [[SettingViewController alloc] init];
    [self.navigationController pushViewController:settingVC animated:YES];
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
