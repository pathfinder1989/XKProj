//
//  UIImage+XK.m
//  Pods-XKProj
//
//  Created by meishi on 2017/11/15.
//

#import "UIImage+XK.h"

#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

@implementation UIImage (XK)

#pragma mark - 根据颜色生成图片 -
+ (UIImage *)imageWithColor:(UIColor *)color
{
    return [self imageWithColor:color size:CGSizeMake(1.0f, 1.0f)];
}

+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size
{
    if (size.width <= 0.0 || size.height <= 0.0) {
        return nil;
    }
    CGRect rect = CGRectMake(0.0f, 0.0f, size.width, size.height);
    UIGraphicsBeginImageContext(size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

#pragma mark - 开屏图片获取 -

+ (UIImage *)appLaunchImage
{
    // search 'UILaunchImages' in documentation
    if (floor(NSFoundationVersionNumber) > NSFoundationVersionNumber_iOS_6_1) {
        // Load resources for iOS 7 or later
        NSArray *imagesDict = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"UILaunchImages"];
        for (NSDictionary *dict in imagesDict) {
            if (CGSizeEqualToSize([UIScreen mainScreen].bounds.size, CGSizeFromString(dict[@"UILaunchImageSize"]))) {
                return [UIImage imageNamed:dict[@"UILaunchImageName"]];
            }
        }
    }
    // Load resources for iOS 6.1 or earlier
    NSString *launchImageName = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"UILaunchImageFile"];
    // iPad
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        if (UIDeviceOrientationIsPortrait([UIDevice currentDevice].orientation))
            return [UIImage imageNamed:[launchImageName stringByAppendingString:@"-Portrait"]];
        if (UIDeviceOrientationIsLandscape([UIDevice currentDevice].orientation))
            return [UIImage imageNamed:[launchImageName stringByAppendingString:@"-Landscape"]];
        // TODO: Portrait (Exclude Status Bar) / Landscape (Exclude Status Bar)
    }
    // iPhone5
    if (iPhone5) {
        return [UIImage imageNamed:[launchImageName stringByAppendingString:@"-568h"]];
    }
    return [UIImage imageNamed:launchImageName];
}

@end
