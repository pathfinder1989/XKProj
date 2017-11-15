//
//  XLaunchController.h
//  XKProj
//
//  Created by meishi on 14/11/2017.
//  Copyright © 2017 Kangbo. All rights reserved.
//

#import "XBaseController.h"

/**
内置开屏之后闪屏-用于广告，品牌露出等，该页面一般跟LaunchImage类似
 */
@interface XLaunchController : XBaseController

@property(nonatomic, copy) void(^autoDismissBlock)(void);

@end
