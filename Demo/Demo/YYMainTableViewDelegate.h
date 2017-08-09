//
//  YYMainTableViewDelegate.h
//  Demo
//
//  Created by Yan on 2017/8/9.
//  Copyright © 2017年 YY. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol YYMainTableViewDelegate <NSObject>

- (void)tableViewDidSelectedIndexpath:(NSIndexPath *)indexpath;

@end
