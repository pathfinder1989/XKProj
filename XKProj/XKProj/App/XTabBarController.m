//
//  XTabBarController.m
//  XKProj
//
//  Created by meishi on 2017/11/15.
//  Copyright © 2017年 Kangbo. All rights reserved.
//

#import "XTabBarController.h"
#import "XLaunchController.h"

@interface XTabBarController ()

@property(nonatomic, strong) XLaunchController *launchController;

@end

@implementation XTabBarController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self initLaunchView];
}

- (void)initLaunchView
{
    [self.view addSubview:self.launchController.view];
}

#pragma mark - methods
- (void)launchDidDismissed
{
    [_launchController.view removeFromSuperview];
    self.launchController = nil;
}

#pragma mark - property
- (XLaunchController *)launchController
{
    if (!_launchController) {
        _launchController = [XLaunchController new];
        _launchController.view.frame = [UIScreen mainScreen].bounds;
        MSWeakObject(self)
        _launchController.autoDismissBlock = ^{
            [weakself launchDidDismissed];
        };
    }
    return _launchController;
}

@end
