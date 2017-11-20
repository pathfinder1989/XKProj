//
//  XKCycleScrollViewCell.m
//  Pods-XKProj
//
//  Created by meishi on 20/11/2017.
//

#import "XKCycleScrollViewCell.h"

@interface XKCycleScrollViewCell ()
@property(strong ,nonatomic) UIImageView *iconImage;
@end

@implementation XKCycleScrollViewCell

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
    self.iconImage = [UIImageView new];
    self.iconImage.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:self.iconImage];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.iconImage.frame = CGRectMake(10, 10, CGRectGetWidth(self.frame) - 20, CGRectGetHeight(self.frame) - 20);
}

@end
