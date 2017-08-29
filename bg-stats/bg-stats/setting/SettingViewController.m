//
//  SettingViewController.m
//  bg stats
//
//  Created by 卢俊杰 on 2017/8/22.
//  Copyright © 2017年 mine. All rights reserved.
//

#import "SettingViewController.h"
#import "SettingGroup.h"

@interface SettingViewController () <UITableViewDataSource> {
    
    UITableView *_table;
    NSMutableArray *_itemArr;
}

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = NSLocalizedString(@"setting_navigationbar_item_title_setting", nil);
    
    [self initItemArray];
    _table = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _table.dataSource = self;
    
    [self.view addSubview:_table];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initItemArray {
    _itemArr = [[NSMutableArray alloc] init];
    
    NSMutableArray *itemSubArray_1 = [[NSMutableArray alloc] init];
    [itemSubArray_1 addObject:@"11"];
    [itemSubArray_1 addObject:@"12"];
    SettingGroup *group_1 = [[SettingGroup alloc] init];
//    group_1.header = @"header1";
//    group_1.footer = @"footer1";
    group_1.itemArr = itemSubArray_1;
    [_itemArr addObject:group_1];
    
    NSMutableArray *itemSubArray_2 = [[NSMutableArray alloc] init];
    [itemSubArray_2 addObject:@"21"];
    [itemSubArray_2 addObject:@"22"];
    SettingGroup *group_2 = [[SettingGroup alloc] init];
    group_2.header = @"header2";
    group_2.footer = @"footer2";
    group_2.itemArr = itemSubArray_2;
    [_itemArr addObject:group_2];
}

#pragma mark - UITableViewDataSource实现
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return _itemArr.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    SettingGroup *group = _itemArr[section];
    return group.itemArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    SettingGroup *group = _itemArr[indexPath.section];
    cell.textLabel.text = group.itemArr[indexPath.row];
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    SettingGroup *group = _itemArr[section];
    return group.header;
}

- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    SettingGroup *group = _itemArr[section];
    return group.footer;
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
