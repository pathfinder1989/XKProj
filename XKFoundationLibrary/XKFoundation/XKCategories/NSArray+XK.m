//
//  NSArray+XK.m
//  Pods-XKProj
//
//  Created by meishi on 24/11/2017.
//

#import "NSArray+XK.h"

@implementation NSArray (XK)

@end

@implementation NSMutableArray (XK)

- (void)addObjectWithoutNil:(id)anObject
{
    if (anObject != nil) {
        [self addObject:anObject];
    }
}

@end
