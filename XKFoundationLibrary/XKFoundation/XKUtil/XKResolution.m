//
//  XKResolution.m
//  Pods-XKProj
//
//  Created by meishi on 20/11/2017.
//

#import "XKResolution.h"
#include "XKResolutionHeader.h"

CGFloat XKStatusBarHeight = 20;
CGFloat XKTopDangerAreaExceptStatusHeight = 24;
CGFloat XKNavigationBarContentHeight = 44;
CGFloat XKNavigationBarHeight = (20 + 24 + 44);
CGFloat XKAppContentMinY = (20 + 24);

CGFloat XKBottomDangerAreaHeight = 34.0;
CGFloat XKBottomBarContentHeight = 51.0;
CGFloat XKBottomBarHeight = (34.0 + 51.0);

@implementation XKResolution

+ (void)resetDeviceResolution
{
    if ([self iPhoneX]) {
        XKAppContentMinY = (20 + 24);
        XKStatusBarHeight = 20;
        XKTopDangerAreaExceptStatusHeight = 24;
        XKNavigationBarContentHeight = 44;
        XKNavigationBarHeight = (20 + 24 + 44);


        XKBottomDangerAreaHeight = 34.0;
        XKBottomBarContentHeight = 51.0;
        XKBottomBarHeight = (34.0 + 51.0);
    }
    else{
        XKAppContentMinY = (20);
        XKStatusBarHeight = 20;
        XKTopDangerAreaExceptStatusHeight = 0;
        XKNavigationBarContentHeight = 44;
        XKNavigationBarHeight = (20 + 44);


        XKBottomDangerAreaHeight = .0;
        XKBottomBarContentHeight = 51.0;
        XKBottomBarHeight = (51.0);
    }
}

+ (BOOL)iPhoneX
{
    return  ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen] currentMode].size) : NO);
}
@end
