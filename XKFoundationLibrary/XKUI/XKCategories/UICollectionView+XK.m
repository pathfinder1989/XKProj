//
//  UICollectionView+XK.m
//  Pods-XKProj
//
//  Created by meishi on 2017/11/17.
//

#import "UICollectionView+XK.h"
#import <objc/runtime.h>

static NSString * const xkCollectionCurrentDidSelectedIndexPath = @"xkCollectionCurrentDidSelectedIndexPath";

@implementation UICollectionView (XK)

- (void)setCurrentSelectedIndexPath:(NSIndexPath *)currentSelectedIndexPath
{
    objc_setAssociatedObject(self, &xkCollectionCurrentDidSelectedIndexPath, currentSelectedIndexPath, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSIndexPath *)currentSelectedIndexPath
{
    return objc_getAssociatedObject(self, &xkCollectionCurrentDidSelectedIndexPath);
}

@end
