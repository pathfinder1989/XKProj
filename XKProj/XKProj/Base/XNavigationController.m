//
//  XNavigationController.m
//  XKProj
//
//  Created by meishi on 2017/11/15.
//  Copyright © 2017年 Kangbo. All rights reserved.
//

#import "XNavigationController.h"

@interface XNavigationController ()

@end

@implementation XNavigationController

+ (void)initialize
{
    UIColor *navBgColor = [UIColor colorWithRed:0.45 green:0.66 blue:0.66 alpha:1.00];
    UIColor *navTextColor = [UIColor whiteColor];
    
    UINavigationBar *navigationBar = [UINavigationBar appearance];
    [navigationBar setBarTintColor:navTextColor];
    [navigationBar setTintColor:navBgColor];
    [navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName :navTextColor, NSFontAttributeName : [UIFont systemFontOfSize:18]}];
    
    [navigationBar setBackgroundImage:[UIImage imageWithColor:navBgColor] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
    //[navBar setShadowImage:[UIImage new]];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

@end
