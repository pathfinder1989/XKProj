//
//  NSString+XK.m
//  Pods
//
//  Created by meishi on 2017/11/15.
//

#import "NSString+XK.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (XK)

- (NSString *)stringByTrimmingCharacters
{
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [self stringByTrimmingCharactersInSet:set];
}

- (NSString *)md5
{
    const char *cStr = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5( cStr, (CC_LONG)strlen(cStr), result );
    
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0],result[1],result[2],result[3],
            result[4],result[5],result[6],result[7],
            result[8],result[9],result[10],result[11],
            result[12],result[13],result[14],result[15]];
}

@end

BOOL XKStringisEmpty(NSString *str)
{
    if (![str isKindOfClass:[NSString class]]) {
        return YES;
    }
    if (str == nil) return YES;
    if ([str isKindOfClass:[NSNull class]]) return YES;
    if ([str isEqualToString:@"(null)"]) return YES;
    if ([str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]].length == 0) return YES;
    if ([str isEqualToString:@""]) return YES;
    
    return NO;
}
