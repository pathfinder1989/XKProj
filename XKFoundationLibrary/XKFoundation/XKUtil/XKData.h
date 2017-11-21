//
//  XKData.h
//  Pods-XKProj
//
//  Created by meishi on 21/11/2017.
//

#import <Foundation/Foundation.h>

@interface XKData : NSObject

/**
 判断该数据是否为Null 如果为Null转化为nil返回 部位Null则返回该对象

 @param object 判断的对象
 @return 返回判断后的结果
 */
+ (id)nilIfNull:(id)object;

/** int的转换 */
+ (int)intForObject:(id)object;

/** NSInteger的转换 */
+ (NSInteger)integerForObject:(id)object;

/** long的转换 */
+ (long)longForObject:(id)object;

/** long long的转换 */
+ (long long)longLongForObject:(id)object;

/** float的转换 */
+ (float)floatForObject:(id)object;

/** double的转换 */
+ (double)doubleForObject:(id)object;

/** BOOL的转换 */
+ (BOOL)boolForObject:(id)object;

/** NSString的转换 */
+ (NSString *)stringForObject:(id)object;

//+ (MSTime *)timeForObject:(id)object;

/** NSArray的转换 */
+ (NSArray *)arrayForObject:(id)object;

/** NSDictionary的转换 */
+ (NSDictionary *)dictionaryForObject:(id)object;

@end
