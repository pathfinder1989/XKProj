//
//  ViewController.m
//  XKProj
//
//  Created by meishi on 14/11/2017.
//  Copyright © 2017 Kangbo. All rights reserved.
//

#import "XKViewController.h"
#import "XLaunchController.h"

@interface XKViewController ()

@property(nonatomic, strong) XLaunchController *launchController;
@end

@implementation XKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [self initLaunchView];
}

- (void)initLaunchView
{
    UIWindow *keyWindow = [[AppDelegate sharedDelegate] appKeyWindow];
    [keyWindow addSubview:self.launchController.view];
}

- (void)testTabbarController
{
    
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
        
        MSWeakObject(self)
        _launchController.autoDismissBlock = ^{
            [weakself launchDidDismissed];
        };
    }
    return _launchController;
}
@end
