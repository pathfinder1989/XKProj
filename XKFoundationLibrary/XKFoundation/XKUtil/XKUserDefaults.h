//
//  XKUserDefaults.h
//  Pods-XKProj
//
//  Created by meishi on 21/11/2017.
//

#import <Foundation/Foundation.h>

@interface XKUserDefaults : NSObject

+ (instancetype)standardUserDefaults;

/**
 *  判断存储过键值对没有
 *
 *  @param key 键值
 *
 *  @return yes,存在 NO 不存在
 */
- (BOOL)hasObjectForKey:(id)key;

/**
 *  得到相应键的对象
 *
 *  @param key key 键值
 *
 *  @return键的对象
 */
- (id)objectForKey:(id)key;

/**
 *  设置相应的键值对
 *
 *  @param object 设置的对象
 *  @param key    键值
 */
- (void)setObject:(id)object forKey:(id)key;

/**
 *  删除相应键的对象
 *
 *  @param key key description
 */
- (void)removeObjectForKey:(id)key;

/**
 *  删除所有的对象
 */
- (void)removeAllObjects;

- (id)valueForKey:(NSString *)key;
- (void)setValue:(id)value forKey:(NSString *)key;

/**
 *  用到再解注释
 */
//- (id)objectForKeyedSubscript:(id)key;
//- (void)setObject:(id)obj forKeyedSubscript:(id)key;
//
//- (void)setInteger:(NSInteger)value forKey:(NSString *)key;
//- (void)setFloat:(float)value forKey:(NSString *)key;
//- (void)setDouble:(double)value forKey:(NSString *)key;
- (void)setBool:(BOOL)value forKey:(NSString *)key;
//- (void)setURL:(NSURL *)url forKey:(NSString *)key;
//- (void)setMCLong:(MCLong)value forKey:(NSString *)key;
//- (void)setDate:(MCDate *)value forKey:(NSString *)key;
//
//- (NSInteger)integerForKey:(NSString *)key;
//- (float)floatForKey:(NSString *)key;
//- (double)doubleForKey:(NSString *)key;
- (BOOL)boolForKey:(NSString *)key;
//- (NSURL *)URLForKey:(NSString *)key;
//- (MCLong)mclongForKey:(NSString *)key;
//- (MCDate *)dateforKey:(NSString *)key;

@end

