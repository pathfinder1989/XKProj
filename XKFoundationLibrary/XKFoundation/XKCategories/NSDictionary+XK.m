//
//  NSDictionary+XK.m
//  Pods-XKProj
//
//  Created by meishi on 24/11/2017.
//

#import "NSDictionary+XK.h"

@implementation NSDictionary (XK)

@end

@implementation NSMutableDictionary (XK)

- (void)setObjectCheckNil:(id)anObject forKey:(id<NSCopying>)aKey
{
    if (anObject != nil && aKey != nil) {
        [self setObject:anObject forKey:aKey];
    }
}

@end
