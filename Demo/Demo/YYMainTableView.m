//
//  YYMainTableView.m
//  Demo
//
//  Created by Yan on 2017/8/9.
//  Copyright © 2017年 YY. All rights reserved.
//

#import "YYMainTableView.h"
#import "YYMainTableViewCell.h"

@interface YYMainTableView ()

<UITableViewDelegate,
UITableViewDataSource>

{
    NSArray *_arrayData;
    id<YYMainTableViewDelegate> _delegateMainTableView;
}

@end

@implementation YYMainTableView

- (void)setNeedReloadDataWithArrayData:(NSArray *)arrayData {
    
    _arrayData = arrayData.mutableCopy;
    [self setNeedsDisplay];
}
- (void)setDelegateMainTableView:(id<YYMainTableViewDelegate>)delegateMainTableView {
    _delegateMainTableView = delegateMainTableView;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (_delegateMainTableView && [_delegateMainTableView respondsToSelector:@selector(tableViewDidSelectedIndexpath:)]) {
        [_delegateMainTableView tableViewDidSelectedIndexpath:indexPath];
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 60;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _arrayData.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    YYMainTableViewCell *cell = [YYMainTableViewCell cellWithTableView:tableView];
    cell.title = _arrayData[indexPath.row];
    return cell;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _arrayData = [[NSArray alloc]init];
        self.delegate = self;
        self.dataSource = self;
    }
    return self;
}


@end
