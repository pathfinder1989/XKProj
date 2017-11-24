//
//  NSDictionary+XK.h
//  Pods-XKProj
//
//  Created by meishi on 24/11/2017.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (XK)

@end

@interface NSMutableDictionary (XK)

- (void)setObjectCheckNil:(id)anObject forKey:(id<NSCopying>)aKey;
@end
