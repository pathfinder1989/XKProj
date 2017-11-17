//
//  AppDelegate.h
//  XKProj
//
//  Created by meishi on 14/11/2017.
//  Copyright © 2017 Kangbo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XTabBarController;
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

/**
 UIApplication 

 @return AppDelegate 对象
 */
+ (instancetype)sharedDelegate;

/**
 当前显示的window
 */
- (UIWindow *)appKeyWindow;

/**
 window根控制器

 @return XTabBarControler
 */
- (XTabBarController *)windowRootController;
@end
