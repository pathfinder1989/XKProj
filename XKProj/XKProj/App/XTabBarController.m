//
//  XTabBarController.m
//  XKProj
//
//  Created by meishi on 2017/11/15.
//  Copyright © 2017年 Kangbo. All rights reserved.
//

#import "XTabBarController.h"
#import "XFirstController.h"
#import "XSecondController.h"
#import "XNavigationController.h"

@interface XTabBarController ()

@end

@implementation XTabBarController

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initialization];
    }
    return self;
}

- (void)initialization
{
    XFirstController *firstController = [[XFirstController alloc] init];
    XNavigationController *firstNavController = [[XNavigationController alloc] initWithRootViewController:firstController];
    
    XSecondController *secondController = [[XSecondController alloc] init];
    XNavigationController *secondNavController = [[XNavigationController alloc] initWithRootViewController:secondController];
    
    self.viewControllers = @[firstNavController, secondNavController];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

@end
