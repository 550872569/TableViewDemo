//
//  AppDelegate.m
//  Demo
//
//  Created by Yan on 2017/8/9.
//  Copyright © 2017年 YY. All rights reserved.
//

#import "AppDelegate.h"
#import "YYMainViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc]initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[UINavigationController alloc]initWithRootViewController:[[YYMainViewController alloc] init]];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
