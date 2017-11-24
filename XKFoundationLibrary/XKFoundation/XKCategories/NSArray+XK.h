//
//  NSArray+XK.h
//  Pods-XKProj
//
//  Created by meishi on 24/11/2017.
//

#import <Foundation/Foundation.h>

@interface NSArray (XK)


/**
 数组取值，越界判断

 @param index 索引
 @return value
 */
- (id)objectCheckingAtIndex:(NSUInteger)index;

/**
 反转数据-倒序输出

 @return 倒序输出数组
 */
- (NSArray *)reverseObjects;
@end

@interface NSMutableArray (XK)

/**
 添加到数组

 @param anObject 不为nil
 */
- (void)addObjectCheckNil:(id)anObject;
@end
