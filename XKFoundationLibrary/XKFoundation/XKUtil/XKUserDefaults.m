//
//  XKUserDefaults.m
//  Pods-XKProj
//
//  Created by meishi on 21/11/2017.
//

#import "XKUserDefaults.h"

@interface XKUserDefaults ()

@property(strong ,nonatomic) NSUserDefaults *userDefaluts;
@end

@implementation XKUserDefaults

+ (instancetype)standardUserDefaults
{
    static XKUserDefaults *sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedClient = [[self alloc] init];
        
    });
    return sharedClient;
}


- (instancetype)init
{
    if (self = [super init]) {
        _userDefaluts = [NSUserDefaults standardUserDefaults];
    }
    return self;
}

- (BOOL)hasObjectForKey:(id)key
{
    id value = [_userDefaluts objectForKey:key];
    return value ? YES : NO;
}

- (id)objectForKey:(NSString *)key
{
    if (nil == key){
        return nil;
    }
    
    id value = [_userDefaluts objectForKey:key];
    return value;
}

- (void)setObject:(id)value forKey:(NSString *)key
{
    if (nil == key || nil == value ){
        return;
    }
    
    [_userDefaluts setObject:value forKey:key];
    [_userDefaluts synchronize];
}

- (id)valueForKey:(NSString *)key
{
    if (nil == key) {
        return nil;
    }
    id value = [_userDefaluts valueForKey:key];
    return value;
}

- (void)setValue:(id)value forKey:(NSString *)key
{
    if ( nil == key || nil == value ) {
        return;
    }
    [_userDefaluts setValue:value forKey:key];
    [_userDefaluts synchronize];
}

- (void)removeObjectForKey:(NSString *)key
{
    if ( nil == key )
        return;
    
    [_userDefaluts removeObjectForKey:key];
    [_userDefaluts synchronize];
}

- (void)removeAllObjects
{
    [NSUserDefaults resetStandardUserDefaults];
}

- (void)setBool:(BOOL)value forKey:(NSString *)key
{
    if ( nil == key){
        return;
    }
    
    [_userDefaluts setBool:value forKey:key];
    [_userDefaluts synchronize];
}

- (BOOL)boolForKey:(NSString *)key
{
    NSParameterAssert(key);
    
    BOOL value = [_userDefaluts boolForKey:key];
    return value;
}
@end
