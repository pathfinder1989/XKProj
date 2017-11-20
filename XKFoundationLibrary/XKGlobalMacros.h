//
//  XKGlobalMacros.h
//  Pods
//
//  Created by meishi on 2017/11/15.
//

/** 全局定义宏 */
#ifndef XKGlobalMacros_h
#define XKGlobalMacros_h

#define MSWeakObject(obj) __weak typeof(obj) weak##obj = obj;

#define XK_METHOD_DEPRECATED_VERSION(_version) __attribute__((deprecated))

#endif /* XKGlobalMacros_h */
