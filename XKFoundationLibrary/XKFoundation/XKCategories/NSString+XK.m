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
