
//
//  XKResolutionHeader.h
//  Pods
//
//  Created by meishi on 20/11/2017.
//

#ifndef XKResolutionHeader_h
#define XKResolutionHeader_h

#pragma mark - 顶部高度量
/** 信号栏高度 */
UIKIT_EXTERN CGFloat XKStatusBarHeight;

/** 顶部除了状态栏的危险区 */
UIKIT_EXTERN CGFloat XKTopDangerAreaExceptStatusHeight;

/** 导航栏内容高度：永远为44 */
UIKIT_EXTERN CGFloat XKNavigationBarContentHeight;

/** 导航栏显示的高度：44, 64, 88 */
UIKIT_EXTERN CGFloat XKNavigationBarHeight;

#pragma mark - 底部高度量

/** 底部栏高度 */
UIKIT_EXTERN CGFloat XKBottomBarHeight;

/** 底部栏危险区高度 */
UIKIT_EXTERN CGFloat XKBottomDangerAreaHeight;

/** 底部栏内容高度 */
UIKIT_EXTERN CGFloat XKBottomBarContentHeight;

/** 内容显示的最小Y 非X是20 X为44 */
UIKIT_EXTERN CGFloat XKAppContentMinY;

#pragma mark - 屏幕
#define APP_SCREEN_BOUNDS   [[UIScreen mainScreen] bounds]
#define APP_SCREEN_HEIGHT   (APP_SCREEN_BOUNDS.size.height)
#define APP_SCREEN_WIDTH    (APP_SCREEN_BOUNDS.size.width)
//#define APP_STATUS_FRAME    [UIApplication sharedApplication].statusBarFrame
//#define APP_CONTENT_WIDTH   (APP_SCREEN_BOUNDS.size.width)
//#define APP_CONTENT_HEIGHT  (APP_SCREEN_BOUNDS.size.height - APP_STATUS_FRAME.size.height)

#endif /* XKResolutionHeader_h */
