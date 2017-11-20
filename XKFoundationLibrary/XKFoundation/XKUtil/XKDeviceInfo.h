//
//  XKDeviceInfo.h
//  Pods-XKProj
//
//  Created by meishi on 20/11/2017.
//

#import <Foundation/Foundation.h>
#import "XKGlobalMacros.h"

@interface XKDeviceInfo : NSObject

/**
 *  获取设备ip
 */
+ (NSString *)ipAddress;

/**
 获取设备型号 e.g. iPhone7,2

 @return iPhone1,1 ... iPhone8,2
 */
+ (NSString *)deviceType;

/**
 不建议使用
 @return iPhone6 iPhone5s
 */
+ (NSString*)deviceString XK_METHOD_DEPRECATED_VERSION(0.1);


/**
 获取手机运营商信息

 @return 无运营商 中国联通
 */
+ (NSString *)carrierName;

/**
 获取机器name e.g. :Kang-iPhone
 */
+ (NSString *)machineName;

/**
 获取机器model e.g. :iPhone
 */
+ (NSString *)machineModel;

/**
 获取机器model e.g. :iPhone
 */
+ (NSString *)machineLocalizedModel;

/**
 获取系统名字 e.g. :iOS
 */
+ (NSString *)systemName;

/**
 获取系统版本 e.g. :10.3.3
 */
+ (NSString *)systemVersion;


/**
 是否是iPhone X

 @return YES 是 NO 不是
 */
+ (BOOL)isiPhoneX;
@end
