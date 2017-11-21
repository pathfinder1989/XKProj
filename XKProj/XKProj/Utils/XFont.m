//
//  XFont.m
//  XKProj
//
//  Created by meishi on 21/11/2017.
//  Copyright © 2017 Kangbo. All rights reserved.
//

#import "XFont.h"

@interface XFont ()
@property(assign ,nonatomic) BOOL isHigherThan82;
@end

@implementation XFont

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
    NSLog(@"%s", __FUNCTION__);
}

+ (UIFont *)systemFontOfSize:(CGFloat)fontSize
{
    return [super systemFontOfSize:fontSize];
}

inline UIFont* UIFontWithSize(CGFloat size){
    return [XFont systemFontOfSize:(size)];
}

inline UIFont* UIFontWithLightSize(CGFloat size){
    return [UIFont systemFontOfSize:(size)];
}

inline UIFont* UIFontWithBoldSize(CGFloat size){
    return [UIFont systemFontOfSize:(size)];
}


inline UIFont* MSFontWithLightSize(CGFloat size){
    if (@available(iOS 8.2, *)) {
        return [UIFont systemFontOfSize:size weight:UIFontWeightLight];
    } else {
        return [UIFont systemFontOfSize:size];
    }
}

@end



//inline UIFont* MSFontWithSize(CGFloat size){
//    //修改一下每次判断
//    if (NSVersionNumber_iOS_9_0) {
//        return [UIFont systemFontOfSize:size weight:UIFontWeightRegular];
//    }
//
//}
//
//inline UIFont* MSFontWithBoldSize(CGFloat size){
//    //修改一下每次判断
//    if (NSVersionNumber_iOS_9_0) {
//        return [UIFont systemFontOfSize:size weight:UIFontWeightSemibold];
//    }
//    return [UIFont systemFontOfSize:size];
//}
//
//
//
//inline UIFont* MSFontWithSizeWeight(CGFloat size, CGFloat weight)
//{
//    //修改一下每次判断
//    if (NSVersionNumber_iOS_9_0) {
//        return [UIFont systemFontOfSize:size weight:weight];
//    }
//    return [UIFont systemFontOfSize:(size)];
//}
//
//
//#pragma mark - 新加的三种字体格式
//// UIFontWeightBold
//inline UIFont* MSFontWithNewBoldSize(CGFloat size){
//    //修改一下每次判断
//    if (NSVersionNumber_iOS_9_0) {
//        return [UIFont systemFontOfSize:size weight:UIFontWeightBold];
//    }
//    return [UIFont systemFontOfSize:size];
//}

