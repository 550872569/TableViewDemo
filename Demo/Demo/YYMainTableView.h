//
//  YYMainTableView.h
//  Demo
//
//  Created by Yan on 2017/8/9.
//  Copyright © 2017年 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "YYMainTableViewDelegate.h"

@interface YYMainTableView : UITableView

- (void)setNeedReloadDataWithArrayData:(NSArray *)arrayData;

- (void)setDelegateMainTableView:(id<YYMainTableViewDelegate>)delegateMainTableView;

@end
