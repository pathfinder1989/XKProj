//
//  MSTransitionProtocol.h
//  XKProj
//
//  Created by meishi on 2017/11/16.
//  Copyright © 2017年 Kangbo. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MSTransitionProtocol <NSObject>

@required

/**
 需要转场动画的view
 该view如果是放到缩小的转场动画，必须是初始化的时候就定宽度的。否则动画出不来

 @return view
 */
- (UIView *)transitionTargetView;


/**
 是否要专场动画 需要必须实现 返回YES 不需要则不需要实现。

 @return YES 是 NO 不需要
 */
- (BOOL)shouldTransition;
@end
