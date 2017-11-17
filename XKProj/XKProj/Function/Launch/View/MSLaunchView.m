//
//  MSLaunchView.m
//  XKProj
//
//  Created by meishi on 2017/11/16.
//  Copyright © 2017年 Kangbo. All rights reserved.
//

#import "MSLaunchView.h"

@interface MSLaunchView()

@property(strong ,nonatomic) UIImageView *backgroundImageView;
@end

@implementation MSLaunchView

- (void)dealloc
{
    NSLog(@"%s", __FUNCTION__);
}

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
    [self addSubview:self.backgroundImageView];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    _backgroundImageView.frame = self.bounds;
}

- (void)setDefaultImage:(UIImage *)image
{
    _backgroundImageView.image = image;
}

#pragma mark - property
- (UIImageView *)backgroundImageView
{
    if (!_backgroundImageView) {
        _backgroundImageView = [UIImageView new];
        _backgroundImageView.backgroundColor = [UIColor clearColor];
//        _backgroundImageView.image = [UIImage appLaunchImage];
    }
    return _backgroundImageView;
}
@end
