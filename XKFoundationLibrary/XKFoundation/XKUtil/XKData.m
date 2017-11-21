//
//  XKData.m
//  Pods-XKProj
//
//  Created by meishi on 21/11/2017.
//

#import "XKData.h"

@implementation XKData

+ (id)nilIfNull:(id)object
{
    return ([NSNull null] == object) ? nil : object;
}

+ (int)intForObject:(id)object
{
    return ([NSNull null] == object || nil == object) ? 0 : [object intValue];
}

+ (NSInteger)integerForObject:(id)object
{
    return (NSInteger)[[self class] intForObject:object];
}

+ (long)longForObject:(id)object
{
    return ([NSNull null] == object || nil == object) ? 0 : [object longValue];
}

+ (long long)longLongForObject:(id)object
{
    return ([NSNull null] == object || nil == object) ? 0 : [object longLongValue];
}

+ (float)floatForObject:(id)object
{
    return ([NSNull null] == object || nil == object) ? 0.0f : [object floatValue];
}

+ (double)doubleForObject:(id)object
{
    return ([NSNull null] == object || nil == object) ? 0.0f : [object doubleValue];
}

+ (BOOL)boolForObject:(id)object
{
    return ([NSNull null] == object || nil == object) ? NO : [object boolValue];
}

+ (NSString *)stringForObject:(id)object
{
    return ([NSNull null] == object || nil == object) ? @"" : object;
}

//+ (MSTime *)timeForObject:(id)object
//{
//    return [MSTime timeWithMilliseconds:[[self class] longForObject:object]];
//}

+ (NSArray *)arrayForObject:(id)object
{
    if (![object isKindOfClass:[NSArray class]]) {
        return nil;
    }
    return object;
}

+ (NSDictionary *)dictionaryForObject:(id)object
{
    if (![object isKindOfClass:[NSDictionary class]]) {
        return nil;
    }
    return object;
}

@end
