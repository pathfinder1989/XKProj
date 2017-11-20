//
//  NSString+XK.m
//  Pods
//
//  Created by meishi on 2017/11/15.
//

#import "NSString+XK.h"

@implementation NSString (XK)

- (NSString *)stringByTrimmingCharacters
{
    NSCharacterSet *set = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [self stringByTrimmingCharactersInSet:set];
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
