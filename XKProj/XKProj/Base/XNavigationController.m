//
//  XNavigationController.m
//  XKProj
//
//  Created by meishi on 2017/11/15.
//  Copyright © 2017年 Kangbo. All rights reserved.
//

#import "XNavigationController.h"
#import "MSTransitionProtocol.h"
#import "MSScaleTransition.h"

@interface XNavigationController ()<UINavigationControllerDelegate, UIGestureRecognizerDelegate>

@end

@implementation XNavigationController

+ (void)initialize
{
    UIColor *navBgColor = [UIColor colorWithRed:0.45 green:0.66 blue:0.66 alpha:1.00];
    UIColor *navTextColor = [UIColor whiteColor];
    
    UINavigationBar *navigationBar = [UINavigationBar appearance];
    [navigationBar setBarTintColor:navTextColor];
    [navigationBar setTintColor:navTextColor];
    [navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName :navTextColor, NSFontAttributeName : [UIFont systemFontOfSize:18]}];
    
    [navigationBar setBackgroundImage:[UIImage imageWithColor:navBgColor] forBarPosition:UIBarPositionAny barMetrics:UIBarMetricsDefault];
    //[navBar setShadowImage:[UIImage new]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //导航控制器的委托方法
    self.delegate = self;
    
    //开启系统右划返回
    self.interactivePopGestureRecognizer.enabled = YES;
    //系统右滑代理
    //self.interactivePopGestureRecognizer.delegate = self;
}

#pragma mark - super push pop
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [super pushViewController:viewController animated:animated];
}

- (nullable UIViewController *)popViewControllerAnimated:(BOOL)animated
{
    UIViewController *controller = [super popViewControllerAnimated:animated];
    NSLog(@"fadsfsdadfsa----: %@", controller.navigationController.viewControllers);
    return controller;
}

#pragma mark - UINavigationControllerDelegate
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
}

- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
}

//- (id<UIViewControllerInteractiveTransitioning>)navigationController:(UINavigationController *)navigationController interactionControllerForAnimationController:(id<UIViewControllerAnimatedTransitioning>)animationController
//{
//
//}

#pragma mark -
- (id<UIViewControllerAnimatedTransitioning>)navigationController:(UINavigationController *)navigationController animationControllerForOperation:(UINavigationControllerOperation)operation fromViewController:(UIViewController *)fromVC toViewController:(UIViewController *)toVC
{
    BOOL isTransition = [fromVC conformsToProtocol:@protocol(MSTransitionProtocol)] && [toVC conformsToProtocol:@protocol(MSTransitionProtocol)];
    if (!isTransition) {//如果连个控制器都没有实现转场，则不转场
        return nil;
    }
    
    MSScaleTransition *scaleTransition = [MSScaleTransition new];
    
    if (operation == UINavigationControllerOperationPush) {
        scaleTransition.isPush = YES;
    }else if (operation == UINavigationControllerOperationPop){
        scaleTransition.isPush = NO;
    }else{
        return nil;
    }
    return scaleTransition;
}

- (UIViewController *)childViewControllerForStatusBarStyle
{
    return self.topViewController;
}
@end
