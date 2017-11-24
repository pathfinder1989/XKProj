//
//  UIControl+XK.h
//  Pods-XKProj
//
//  Created by meishi on 24/11/2017.
//

#import <UIKit/UIKit.h>

/**
 https://stackoverflow.com/questions/4581782/can-i-pass-a-block-as-a-selector-with-objective-c
 */
@interface UIControl (XK)

- (void)addActionCompletionBlock:(void(^)(id sender))actionCompletionBlock forControlEvents:(UIControlEvents)controlEvents;
- (void)removeActionCompletionBlocksForControlEvents:(UIControlEvents)controlEvents;
@end
