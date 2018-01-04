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

- (void)removeAllSubviews
{
    [self.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj removeAllSubviews];
    }];
}

- (void)destoryView:(UIView *)view
{
    [view removeFromSuperview];
    view = nil;
}

- (UIViewController *)controller
{
    for (UIView *next = [self superview]; next; next = next.superview) {
        UIResponder *nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)nextResponder;
        }
    }
    return nil;
}

- (BOOL)isDisplayedInScreen
{
    if (self == nil) {
        return NO;
    }
    
    CGRect screenRect = [UIScreen mainScreen].bounds;
    CGRect rect = [self convertRect:self.frame fromView:nil];
    if (CGRectIsEmpty(rect) || CGRectIsNull(rect)) {
        return NO;
    }
    
    if (self.hidden) {
        return NO;
    }
    
    if (self.superview == nil) {
        return NO;
    }
    
    if (CGSizeEqualToSize(rect.size, CGSizeZero)) {
        return NO;
    }
    
    CGRect intersectionRect = CGRectIntersection(rect, screenRect);
    if (CGRectIsEmpty(intersectionRect) || CGRectIsNull(intersectionRect)) {
        return NO;
    }
    
    return YES;
}
@end
