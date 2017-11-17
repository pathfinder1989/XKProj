//
//  UIViewController+XK.m
//  Pods-XKProj
//
//  Created by meishi on 2017/11/17.
//

#import "UIViewController+XK.h"
#import <objc/runtime.h>

static NSString * const xkUpdateStatusBarStyle = @"xkUpdateStatusBarStyle";

@implementation UIViewController (XK)

- (void)setStatusBarStyle:(NSNumber *)statusBarStyle
{
    objc_setAssociatedObject(self, &xkUpdateStatusBarStyle, statusBarStyle, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    
    [self setNeedsStatusBarAppearanceUpdate];
}

- (NSNumber *)statusBarStyle
{
    return objc_getAssociatedObject(self, &xkUpdateStatusBarStyle);
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return [self.statusBarStyle integerValue];
}

@end
