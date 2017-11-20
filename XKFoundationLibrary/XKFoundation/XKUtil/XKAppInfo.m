//
//  XKAppInfo.m
//  Pods-XKProj
//
//  Created by meishi on 20/11/2017.
//

#import "XKAppInfo.h"

@implementation XKAppInfo

+ (NSString *)appVersion
{
    NSString *version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
    return version;
}

+ (NSString *)appName
{
    NSString *name = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
    return name;
}

+ (NSString *) appBuildVersion
{
    NSString *version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
    return version;
}


@end
