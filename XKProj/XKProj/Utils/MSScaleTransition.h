//
//  MSScaleTransition.h
//  XKProj
//
//  Created by meishi on 2017/11/16.
//  Copyright © 2017年 Kangbo. All rights reserved.
//

#import "MSTransition.h"

@interface MSScaleTransition : MSTransition


/**
 是否是push 反之是pop
 */
@property(assign ,nonatomic) BOOL isPush;
#warning 这个bool 用枚举代替

/**
 动画进行的时长
 */
@property(assign ,nonatomic) NSTimeInterval animationDuration;
@end
