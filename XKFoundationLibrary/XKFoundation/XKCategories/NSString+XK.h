//
//  NSString+XK.h
//  Pods
//
//  Created by meishi on 2017/11/15.
//

#import <Foundation/Foundation.h>

@interface NSString (XK)


/**
 将字符串移除空格和换行符

 @return 处理过的字符串
 */
- (NSString *)stringByTrimmingCharacters;

/**
 md5编码字符串

 @return md5编码过的字符串
 */
- (NSString *)md5;
@end

extern BOOL XKStringisEmpty(NSString *str);
