//
//  XLaunchController.m
//  XKProj
//
//  Created by meishi on 14/11/2017.
//  Copyright © 2017 Kangbo. All rights reserved.
//

#import "XLaunchController.h"

@implementation XLaunchController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor clearColor];
    
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

@end
