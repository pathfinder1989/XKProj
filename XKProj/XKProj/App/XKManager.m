//
//  XKManager.m
//  XKProj
//
//  Created by meishi on 14/11/2017.
//  Copyright © 2017 Kangbo. All rights reserved.
//

#import "XKManager.h"
#include <sys/param.h>
#include <sys/mount.h>

@implementation XKManager

+ (instancetype)sharedInstance
{
    static XKManager *_instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc] init];
    });
    return _instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initialization];
    }
    return self;
}

- (void)initialization
{
    
    
    NSLog(@"fdasadfs--: %@ %@ %@", [XKAppInfo appName], [XKAppInfo appVersion], [XKDeviceInfo carrierName]);
    
    NSLog(@"fdasadfs--: %0.2ld  总：%0.2ld", ((long)[XKDeviceInfo freeStorage])/1024/1024/1024, ((long)[XKDeviceInfo usedStorage]) / 1024/1024/1024);
    
    [XKManager freeDiskSpaceInBytes];
    [XKManager usedSpaceAndfreeSpace];
}


+ (NSString *)freeDiskSpaceInBytes{
    struct statfs buf;
    unsigned long long freeSpace = -1;
    if (statfs("/var", &buf) >= 0) {
        freeSpace = (unsigned long long)(buf.f_bsize * buf.f_bavail);
    }
    NSString *str = [NSString stringWithFormat:@"手机剩余存储空间为：%0.2lld MB",freeSpace/1024/1024/1024];
    NSLog(@"fdsdafdafs--: %@", str);
    return str;
}

+ (void)usedSpaceAndfreeSpace{
    NSString* path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0] ;
    NSFileManager* fileManager = [[NSFileManager alloc ]init];
    NSDictionary *fileSysAttributes = [fileManager attributesOfFileSystemForPath:path error:nil];
    NSNumber *freeSpace = [fileSysAttributes objectForKey:NSFileSystemFreeSize];
    NSNumber *totalSpace = [fileSysAttributes objectForKey:NSFileSystemSize];
    NSString *space = [NSString stringWithFormat:@"已占用%0.1fG/剩余%0.1fG",([totalSpace longLongValue] - [freeSpace longLongValue])/1024.0/1024.0/1024.0,[freeSpace longLongValue]/1024.0/1024.0/1024.0];
    NSLog(@"fdsfdsfds---: %@", space);
}

@end
