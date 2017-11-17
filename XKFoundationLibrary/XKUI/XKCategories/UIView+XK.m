//
//  UIView+XK.m
//  Pods-XKProj
//
//  Created by meishi on 2017/11/16.
//

#import "UIView+XK.h"

@implementation UIView (XK)

- (UIImage *)snapshotImage
{
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, self.opaque, 0);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *snap = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return snap;
}
@end
