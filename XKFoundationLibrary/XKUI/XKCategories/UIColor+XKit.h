//
//  UIColor+XKit.h
//  Pods
//
//  Created by meishi on 2017/11/15.
//

#import <UIKit/UIKit.h>

@interface UIColor (XKit)


/**
 将hex颜色字符串转换为UIColor

 @param hexStr hex字符串
 @return UIColor
 */
+ (instancetype)colorWithHexString:(NSString *)hexStr;
@end


extern UIColor* XKColorFromRGB(CGFloat r, CGFloat g, CGFloat b);
extern UIColor* XKColorFromRGBA(CGFloat r, CGFloat g, CGFloat b, CGFloat alpha);

