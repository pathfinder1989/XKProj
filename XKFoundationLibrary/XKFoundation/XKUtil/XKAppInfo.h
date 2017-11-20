//
//  XKAppInfo.h
//  Pods-XKProj
//
//  Created by meishi on 20/11/2017.
//

#import <Foundation/Foundation.h>

/**
 获取APP信息
 */
@interface XKAppInfo : NSObject

/**
 *  获取app版本号
 */
+ (NSString *) appVersion;

/**
 获取app名字
 
 @return appName
 */
+ (NSString *) appName;

/**
 获取appbuild版本号
 
 @return build version
 */
+ (NSString *) appBuildVersion;
@end
