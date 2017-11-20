//
//  XKCycleScrollView.h
//  Pods-XKProj
//
//  Created by meishi on 20/11/2017.
//

#import <UIKit/UIKit.h>

@interface XKCycleScrollView : UIView


/**
 是否是无限循环
 */
@property(assign ,nonatomic) BOOL unlimited;

@property(strong ,nonatomic) NSArray *itemsArray;

@end
