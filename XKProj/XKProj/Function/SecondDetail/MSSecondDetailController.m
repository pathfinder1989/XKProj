//
//  MSSecondDetailController.m
//  XKProj
//
//  Created by meishi on 2017/11/17.
//  Copyright © 2017年 Kangbo. All rights reserved.
//

#import "MSSecondDetailController.h"
#import "MSTransitionProtocol.h"

@interface MSSecondDetailController ()<MSTransitionProtocol>

@property(strong ,nonatomic) UIImageView *headerImage;
@end

@implementation MSSecondDetailController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.view addSubview:self.headerImage];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
}

#pragma mark - MSTransitionProtocol
- (UIView *)transitionTargetView
{
    return _headerImage;
}

- (BOOL)shouldTransition
{
    return _shouldTransition;
}


#pragma mark - property
- (UIImageView *)headerImage
{
    if (!_headerImage) {
        _headerImage = [UIImageView new];
        _headerImage.backgroundColor = [UIColor lightGrayColor];
        _headerImage.frame = CGRectMake(0, 0, CGRectGetWidth(self.view.frame), 160);
    }
    return _headerImage;
}
@end
