//
//  YYMainTableViewCell.h
//  Demo
//
//  Created by Yan on 2017/8/9.
//  Copyright © 2017年 YY. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YYMainTableViewCell : UITableViewCell

+ (instancetype)cellWithTableView:(UITableView *)tableView;

@property (nonatomic, copy) NSString *title;

@end
