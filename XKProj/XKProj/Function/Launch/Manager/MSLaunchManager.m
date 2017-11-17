//
//  MSLaunchManager.m
//  XKProj
//
//  Created by meishi on 2017/11/17.
//  Copyright © 2017年 Kangbo. All rights reserved.
//

#import "MSLaunchManager.h"
#import "MSLaunchView.h"

static NSInteger const launchDurationShow = 3;

@interface MSLaunchManager ()

@property(strong ,nonatomic) MSLaunchView *launchView;

/**
 展示时间
 */
@property(assign ,nonatomic) NSInteger duration;

@property(strong ,nonatomic) NSTimer *countdownTimer;
@end

/**
 开屏资源的具体展示规则根据产品情况决定
 */
@implementation MSLaunchManager

+ (instancetype)manager
{
    return [[self alloc] init];
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
    //加载更新本地的开屏资源
    [self loadLaunchData];
}

#pragma mark - 本地开屏的操作

/**
 //查找本地的资源文件夹 是否有开屏资源可展示

 @return YES存在 NO不存在
 */
- (BOOL)isExitLaunchSource
{
    return NO;
}

#pragma mark - 开屏图的展示和消失
- (void)showLaunchView
{
    //如果本地没有有资源
    if (![self isExitLaunchSource]) {
        return;
    }
    
    UIWindow *window = [[AppDelegate sharedDelegate] appKeyWindow];
    [window addSubview:self.launchView];
    _launchView.frame = window.bounds;
    
    [self startTimer];
}

- (void)dismissLaunchShow
{
    [self.countdownTimer invalidate];
    self.countdownTimer = nil;
    
    [UIView animateWithDuration:.3f animations:^{
        self.launchView.alpha = 0;
    } completion:^(BOOL finished) {
        [self.launchView removeFromSuperview];
        self.launchView = nil;
        //动画执行结束 回调
    }];
}

#pragma mark - timer
- (void)countDownTimerRefresh
{
    _duration--;
    if (_duration <= 0) {
        [self dismissLaunchShow];
    }
}

- (void)startTimer
{
    if (_duration <= 0) {
        _duration = launchDurationShow;
    }
    [[NSRunLoop mainRunLoop] addTimer:self.countdownTimer forMode:NSRunLoopCommonModes];
}

#pragma mark - 加载数据
- (void)loadLaunchData
{
    
}

#pragma mark - property
- (MSLaunchView *)launchView
{
    if (!_launchView) {
        _launchView = [MSLaunchView new];
        _launchView.backgroundColor = [UIColor lightGrayColor];
    }
    return _launchView;
}

- (NSTimer *)countdownTimer
{
    if (!_countdownTimer) {
        _countdownTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(countDownTimerRefresh) userInfo:nil repeats:YES];
    }
    return _countdownTimer;
}
@end
