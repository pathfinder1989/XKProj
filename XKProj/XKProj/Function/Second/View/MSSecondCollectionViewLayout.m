//
//  MSSecondCollectionViewLayout.m
//  XKProj
//
//  Created by meishi on 2017/11/15.
//  Copyright © 2017年 Kangbo. All rights reserved.
//

#import "MSSecondCollectionViewLayout.h"

@interface MSSecondCollectionViewLayout ()

/**
 存储每一列item的高度
 */
@property(strong ,nonatomic) NSMutableDictionary *itemHeightDictionary;

/**
 存放每一个item的布局属性
 */
@property(strong ,nonatomic) NSMutableArray *itemLayoutAttributeArray;
@end

@implementation MSSecondCollectionViewLayout

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
    self.columnSpacing = 10.0f;
    self.rowSpacing = 10.0f;
    self.collectionInset = UIEdgeInsetsMake(10.0f, 10.0f, 10.0f, 10.0f);
    self.columnCount = 3;
}

#pragma mark - property
- (NSMutableDictionary *)itemHeightDictionary
{
    if (!_itemHeightDictionary) {
        _itemHeightDictionary = [NSMutableDictionary new];
    }
    return _itemHeightDictionary;
}

- (NSMutableArray *)itemLayoutAttributeArray
{
    if (!_itemLayoutAttributeArray) {
        _itemLayoutAttributeArray = [NSMutableArray new];
    }
    return _itemLayoutAttributeArray;
}
@end
