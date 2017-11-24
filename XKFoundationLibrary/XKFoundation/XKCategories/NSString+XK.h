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
- (NSString *)md5String;

#pragma mark - base64
- (NSString *)base64EncodedString;
- (NSString *)base64DecodedString;
+ (NSString *)stringWithBase64EncodedString:(NSString *)string;
- (NSString *)base64EncodedStringWithWrapWidth:(NSUInteger)wrapWidth;
- (NSData *)base64DecodedData;
@end


/**
 判断字符串是否为空

 @param str 需要判断的字符串
 @return YES是空 NO 不是空
 */
UIKIT_EXTERN BOOL XKStringisEmpty(NSString *str);
