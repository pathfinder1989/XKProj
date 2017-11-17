//
//  XLaunchController.m
//  XKProj
//
//  Created by meishi on 14/11/2017.
//  Copyright © 2017 Kangbo. All rights reserved.
//

#import "XLaunchController.h"
#import "MSLaunchView.h"
@interface XLaunchController ()
@property(strong ,nonatomic) MSLaunchView *launchView;
@end

@implementation XLaunchController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor clearColor];
    
    [self.view addSubview:self.launchView];
//    UIImage *defaultImage = [UIImage appLaunchImage];
//    [_launchView setDefaultImage:defaultImage];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        [UIView animateWithDuration:1.5 animations:^{
            self.view.alpha = 0;
        } completion:^(BOOL finished) {
            if (self.autoDismissBlock) {
                self.autoDismissBlock();
                self.autoDismissBlock = nil;
            }
        }];
        
    });
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    _launchView.frame = self.view.bounds;
}

#pragma mark - propery
- (MSLaunchView *)launchView
{
    if (!_launchView) {
        _launchView = [MSLaunchView new];
        _launchView.backgroundColor = [UIColor lightGrayColor];
    }
    return _launchView;
}
@end
