//
//  YYMainViewController.m
//  Demo
//
//  Created by Yan on 2017/8/9.
//  Copyright © 2017年 YY. All rights reserved.
//

#import "YYMainViewController.h"
#import "Masonry.h"
#import "YYMainTableView.h"
#import "YYTargetViewController.h"

@interface YYMainViewController ()

<YYMainTableViewDelegate>

{
    YYMainTableView *_tableView;
    NSArray *_arrayData;
}

@end

@implementation YYMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initUI];
}

#pragma mark - YYMainTableViewDelegate

- (void)tableViewDidSelectedIndexpath:(NSIndexPath *)indexpath {
    if (_arrayData.count) {
        YYTargetViewController * targetVC = [[YYTargetViewController alloc] init];
        [targetVC setNavTitle:_arrayData[indexpath.row]];
        [self.navigationController pushViewController:targetVC animated:YES];
    }
}

- (void)initUI {
    self.view.backgroundColor = [UIColor whiteColor];
    _tableView = [[YYMainTableView alloc]init];
    [_tableView setDelegateMainTableView:self];
    [self.view addSubview:_tableView];
    [_tableView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.left.right.bottom.equalTo(self.view);
    }];
    _arrayData = @[@"第一个控制器",@"第二个控制器",@"第三个控制器",@"第四个控制器",@"第五个控制器",@"第六个控制器",@"第七个控制器",@"第七个控制器",@"第七个控制器",@"第七个控制器",@"第七个控制器"];
    [_tableView setNeedReloadDataWithArrayData:_arrayData.copy];
}

@end
