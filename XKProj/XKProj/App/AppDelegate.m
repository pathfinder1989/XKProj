//
//  AppDelegate.m
//  XKProj
//
//  Created by meishi on 14/11/2017.
//  Copyright © 2017 Kangbo. All rights reserved.
//

#import "AppDelegate.h"
#import "XKNavigationController.h"
#import "XKManager.h"

#import "XFirstController.h"
#import "XSecondController.h"
#import "XNavigationController.h"
#import "XTabBarController.h"

@interface AppDelegate ()
@property(strong ,nonatomic) XTabBarController *tabbarController;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [self initWindow];
    return YES;
}

+ (instancetype)sharedDelegate
{
    return (AppDelegate *)[UIApplication sharedApplication].delegate;
}

- (UIWindow *)appKeyWindow
{
    return self.window;
}

#pragma mark -初始化window
- (void)initWindow
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.tabbarController = [XTabBarController new];
    
    XFirstController *firstController = [[XFirstController alloc] init];
    XNavigationController *firstNavController = [[XNavigationController alloc] initWithRootViewController:firstController];
    
    XSecondController *secondController = [[XSecondController alloc] init];
    XNavigationController *secondNavController = [[XNavigationController alloc] initWithRootViewController:secondController];
    
    self.tabbarController.viewControllers = @[firstNavController, secondNavController];
    self.window.rootViewController = self.tabbarController;
    
    //    self.mainController = [[XKViewController alloc] init];
//    self.navigationController = [[XKNavigationController alloc] initWithRootViewController:self.mainController];
//    self.window.rootViewController = self.navigationController;
    
    
    [self.window makeKeyAndVisible];
}
#pragma mark - 全局单例初始化
- (void)initManager
{
    //初始化umeng统计
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
