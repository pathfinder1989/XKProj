//
//  UICollectionView+XK.h
//  Pods-XKProj
//
//  Created by meishi on 2017/11/17.
//

#import <UIKit/UIKit.h>

@interface UICollectionView (XK)

/**
 当前选中的IndexPath- 直接调用setter getter方法设置或者获取属性
 */
@property(strong ,nonatomic) NSIndexPath *currentSelectedIndexPath;
@end
