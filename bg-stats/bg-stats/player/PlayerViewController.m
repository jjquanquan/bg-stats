//
//  PlayerViewController.m
//  bg stats
//
//  Created by 卢俊杰 on 2017/8/23.
//  Copyright © 2017年 mine. All rights reserved.
//

#import "PlayerViewController.h"

@interface PlayerViewController () <UITableViewDataSource> {
    
    UITableView *_table;
    NSMutableArray *_playerArr;
    
}

@end

@implementation PlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self initData];
    _table = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    _table.dataSource = self;
    [self.view addSubview:_table];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initData {
    NSArray *playerArr = [[NSArray alloc] initWithObjects:@"张三", @"李四", @"王五", @"王六", nil];
    for (NSObject *obj in playerArr) {
        NSString *playerName = (NSString *)obj;
        NSString *firstCharactor = [self firstCharactorWithString:playerName];
        NSLog(@"%@", firstCharactor);
    }
}

#pragma mark - UITableViewDataSource实现
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"id"];
    
    return cell;
}

#pragma mark -
- (NSString *)firstCharactorWithString:(NSString *)string {
    NSMutableString *str = [NSMutableString stringWithString:string];
    CFStringTransform((CFMutableStringRef)str, NULL, kCFStringTransformMandarinLatin, NO);
    CFStringTransform((CFMutableStringRef)str, NULL, kCFStringTransformStripDiacritics, NO);
    NSString *pinYin = [str capitalizedString];
    return [pinYin substringToIndex:1];
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
