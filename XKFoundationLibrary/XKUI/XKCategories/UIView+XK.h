//
//  UIView+XK.h
//  Pods-XKProj
//
//  Created by meishi on 2017/11/16.
//

#import <UIKit/UIKit.h>

@interface UIView (XK)

/**
 当前view的快照
 */
- (UIImage *)snapshotImage;


/**
 移除所有子view。
 */
- (void)removeAllSubviews;

/**
 销毁view

 @param view 该view从SupView移除并nil
 */
- (void)destoryView:(UIView *)view;


/**
 该view所在的controller
 */
@property(strong , readonly, nonatomic) UIViewController *controller;
@end
