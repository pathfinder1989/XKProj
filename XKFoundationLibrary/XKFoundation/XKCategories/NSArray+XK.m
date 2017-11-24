//
//  NSArray+XK.m
//  Pods-XKProj
//
//  Created by meishi on 24/11/2017.
//

#import "NSArray+XK.h"

@implementation NSArray (XK)

- (id)objectCheckingAtIndex:(NSUInteger)index
{
    if (index >= [self count]) {
        return nil;
    }
    
    id value = [self objectAtIndex:index];
    if (value == [NSNull null]) {
        return nil;
    }
    return value;
}

- (NSArray *)reverseObjects
{
    return [[self reverseObjectEnumerator] allObjects];
}

@end

@implementation NSMutableArray (XK)

- (void)addObjectCheckNil:(id)anObject
{
    if (anObject != nil) {
        [self addObject:anObject];
    }
}

@end
