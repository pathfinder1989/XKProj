//
//  UIImage+XK.h
//  Pods-XKProj
//
//  Created by meishi on 2017/11/15.
//

#import <UIKit/UIKit.h>

@interface UIImage (XK)

/**
 绘制纯色图片

 @param color 颜色
 @return UIImage
 */
+ (UIImage *)imageWithColor:(UIColor *)color;

/**
 绘制纯色图片

 @param color UIColor
 @param size size
 @return UIImage
 */
+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;
@end
