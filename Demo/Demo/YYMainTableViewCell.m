//
//  YYMainTableViewCell.m
//  Demo
//
//  Created by Yan on 2017/8/9.
//  Copyright © 2017年 YY. All rights reserved.
//

#import "YYMainTableViewCell.h"
#import "Masonry.h"
#import "UILabel+Category.h"

@interface YYMainTableViewCell ()

@property (nonatomic, strong) UILabel *labelTitle;

@end

@implementation YYMainTableViewCell

static NSString *YYMainTableViewCellID = @"YYMainTableViewCellID";

- (void)setTitle:(NSString *)title {
    _title = title;
    self.labelTitle.text = _title;
}
+ (instancetype)cellWithTableView:(UITableView *)tableView {
    YYMainTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:YYMainTableViewCellID];
    if (cell == nil) {
        cell = [[YYMainTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:YYMainTableViewCellID];
    }
    return cell;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.contentView addSubview:self.labelTitle];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    [self.labelTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.contentView.mas_top).with.offset(10);
        make.bottom.equalTo(self.contentView.mas_bottom).with.offset(-10);
        make.left.equalTo(self.contentView.mas_left).with.offset(10);
        make.right.equalTo(self.contentView.mas_right).with.offset(-10);
    }];
}

- (UILabel *)labelTitle {
    if (!_labelTitle) {
        _labelTitle = [UILabel labelWithTitle:@"123" titleFont:15 backgroundColor:[UIColor whiteColor] textAlignment:NSTextAlignmentLeft ract:CGRectZero numberOfLines:0 textColor:[UIColor blackColor]];
    }
    return _labelTitle;
}

@end
