//
//  NSTimer+XK.h
//  Pods-XKProj
//
//  Created by meishi on 24/11/2017.
//

#import <Foundation/Foundation.h>

@interface NSTimer (XK)

/**
 暂停timer
 */
- (void)pauseTimer;

/**
 重启timer
 */
- (void)resumeTimer;

/**
 在多少s之后重启timer

 @param interval timer
 */
- (void)resumeTimerAfterTimeInterval:(NSTimeInterval)interval;
@end
