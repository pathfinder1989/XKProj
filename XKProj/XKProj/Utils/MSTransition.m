//
//  MSTransition.m
//  XKProj
//
//  Created by meishi on 2017/11/16.
//  Copyright © 2017年 Kangbo. All rights reserved.
//

#import "MSTransition.h"

@implementation MSTransition

- (void)animateTransition:(nonnull id<UIViewControllerContextTransitioning>)transitionContext {
    
}

- (NSTimeInterval)transitionDuration:(nullable id<UIViewControllerContextTransitioning>)transitionContext {
    return .3;
}

- (UIView *)transitionTargetView
{
    return nil;
}

- (BOOL)shouldTransition
{
    return NO;
}

@end
