//
//  UIColor+XKit.m
//  Pods
//
//  Created by meishi on 2017/11/15.
//

#import "UIColor+XKit.h"
#import "NSString+XK.h"

@implementation UIColor (XKit)

static BOOL hexStrToRGBA(NSString *hexStr, CGFloat *r, CGFloat *g, CGFloat *b, CGFloat *a) {
    hexStr = [[hexStr stringByTrimmingCharacters] uppercaseString];
    if ([hexStr hasPrefix:@"#"]) {
        hexStr = [hexStr substringFromIndex:1];
    } else if ([hexStr hasPrefix:@"0X"]) {
        hexStr = [hexStr substringFromIndex:2];
    }
    
    NSUInteger length = [hexStr length];
    //         RGB            RGBA          RRGGBB        RRGGBBAA
    if (length != 3 && length != 4 && length != 6 && length != 8) {
        return NO;
    }
    
    //RGB,RGBA,RRGGBB,RRGGBBAA
    if (length < 5) {
        *r = hexStrToInt([hexStr substringWithRange:NSMakeRange(0, 1)]) / 255.0f;
        *g = hexStrToInt([hexStr substringWithRange:NSMakeRange(1, 1)]) / 255.0f;
        *b = hexStrToInt([hexStr substringWithRange:NSMakeRange(2, 1)]) / 255.0f;
        if (length == 4)  *a = hexStrToInt([hexStr substringWithRange:NSMakeRange(3, 1)]) / 255.0f;
        else *a = 1;
    } else {
        *r = hexStrToInt([hexStr substringWithRange:NSMakeRange(0, 2)]) / 255.0f;
        *g = hexStrToInt([hexStr substringWithRange:NSMakeRange(2, 2)]) / 255.0f;
        *b = hexStrToInt([hexStr substringWithRange:NSMakeRange(4, 2)]) / 255.0f;
        if (length == 8) *a = hexStrToInt([hexStr substringWithRange:NSMakeRange(6, 2)]) / 255.0f;
        else *a = 1;
    }
    return YES;
}

static inline NSUInteger hexStrToInt(NSString *str) {
    uint32_t result = 0;
    sscanf([str UTF8String], "%X", &result);
    return result;
}

//引用自YYKit
+ (instancetype)colorWithHexString:(NSString *)hexStr
{
    CGFloat r, g, b, a;
    if (hexStrToRGBA(hexStr, &r, &g, &b, &a)) {
        return [UIColor colorWithRed:r green:g blue:b alpha:a];
    }
    return nil;
}


UIColor * XKColorFromRGB(CGFloat r, CGFloat g, CGFloat b){
    return XKColorFromRGBA(r, g, b, 1);
}

UIColor * XKColorFromRGBA(CGFloat r, CGFloat g, CGFloat b, CGFloat alpha){
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:alpha];
}
@end
