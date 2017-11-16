//
//  AppDelegate.h
//  XKProj
//
//  Created by meishi on 14/11/2017.
//  Copyright © 2017 Kangbo. All rights reserved.
//

#import <UIKit/UIKit.h>

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
@end
