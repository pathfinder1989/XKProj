//
//  MSSecondCollectionCell.m
//  XKProj
//
//  Created by meishi on 2017/11/15.
//  Copyright © 2017年 Kangbo. All rights reserved.
//

#import "MSSecondCollectionCell.h"

@interface MSSecondCollectionCell()

@property(strong ,nonatomic) UIImageView *iconImage;

@end

@implementation MSSecondCollectionCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialization];
    }
    return self;
}

- (void)initialization
{
    [self addSubview:self.iconImage];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    _iconImage.frame = CGRectMake(5, 5, CGRectGetWidth(self.frame) - 10, CGRectGetHeight(self.frame) - 10);
}

#pragma mark - property
- (UIImageView *)iconImage
{
    if (!_iconImage) {
        _iconImage = [UIImageView new];
        _iconImage.backgroundColor = [UIColor lightGrayColor];
    }
    return _iconImage;
}
@end
