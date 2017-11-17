//
//  UITableView+XK.m
//  Pods-XKProj
//
//  Created by meishi on 2017/11/17.
//

#import "UITableView+XK.h"
#import <objc/runtime.h>

static NSString * const xkTableViewCurrentDidSelectedIndexPath = @"xkTableViewCurrentDidSelectedIndexPath";

@implementation UITableView (XK)

- (void)setCurrentSelectedIndexPath:(NSString *)currentSelectedIndexPath
{
    objc_setAssociatedObject(self, &xkTableViewCurrentDidSelectedIndexPath, currentSelectedIndexPath, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSIndexPath *)currentSelectedIndexPath
{
    return objc_getAssociatedObject(self, &xkTableViewCurrentDidSelectedIndexPath);
}

@end
