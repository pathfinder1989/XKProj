//
//  NSData+XK.h
//  Pods-XKProj
//
//  Created by meishi on 20/11/2017.
//

#import <Foundation/Foundation.h>

@interface NSData (XK)


/**
 NSString
 @return NSData
 */
+ (NSData *)dataWithBase64EncodedString:(NSString *)string;
- (NSString *)base64EncodedStringWithWrapWidth:(NSUInteger)wrapWidth;

/**
 NSData 64 编码后转换成NSString

 @return NSString为编码后的字符串
 */
- (NSString *)base64EncodedString;
@end
