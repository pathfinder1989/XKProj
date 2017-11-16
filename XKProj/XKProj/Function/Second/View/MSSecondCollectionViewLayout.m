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

- (void)prepareLayout
{
    [super prepareLayout];

    //清空每一列的最大的Y值
    for (int i = 0; i < self.columnCount; ++i) {
        NSString *columnString = [NSString stringWithFormat:@"%d",i];
        self.itemHeightDictionary[columnString] = @(self.collectionInset.top);
    }

    //计算所有item的布局属性
    [self.itemLayoutAttributeArray removeAllObjects];
    NSInteger count = [self.collectionView numberOfItemsInSection:0];
    for (int j = 0; j < count; ++j) {
        NSIndexPath *indexPath = [NSIndexPath indexPathForItem:j inSection:0];
        UICollectionViewLayoutAttributes *attributes = [self layoutAttributesForItemAtIndexPath:indexPath];
        [self.itemLayoutAttributeArray addObject:attributes];
    }
}

/** 设置滚动区域 */
- (CGSize)collectionViewContentSize
{
    __block NSString *maxHeightColumn = @"0";
    [self.itemHeightDictionary enumerateKeysAndObjectsUsingBlock:^(NSString *column, NSNumber *maxY, BOOL *stop) {
        CGFloat maxy = [maxY floatValue];
        if (maxy > [maxHeightColumn floatValue]){
             maxHeightColumn = column;
        }
    }];
    CGFloat maxHeight = [self.itemHeightDictionary[maxHeightColumn] floatValue];
    CGFloat insetBottom = self.collectionInset.bottom;
    return CGSizeMake(0, maxHeight + insetBottom);
}

/**允许每一次重新布局*/
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)newBounds
{
    return YES;
}

- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath
{
    __block NSString *minColumnString = @"0";
    [self.itemHeightDictionary enumerateKeysAndObjectsUsingBlock:^(NSString *column, NSNumber *maxY, BOOL * _Nonnull stop) {
        CGFloat maxy = [maxY floatValue];
        if (maxy < [self.itemHeightDictionary[minColumnString] floatValue]) {
            minColumnString = column;
        }
    }];
    
    CGFloat collectionContentInsetLeft = self.collectionInset.left;
    CGFloat collectionContentInsetRight = self.collectionInset.right;
    
    //计算每一个item的宽高
    //[UIScreen mainScreen].bounds.size.width
    CGFloat itemWidth = (CGRectGetWidth(self.collectionView.frame) - self.columnSpacing * (self.columnCount - 1) - collectionContentInsetLeft - collectionContentInsetRight) / self.columnCount;
    CGFloat itemHeight= [self.delegtate secondCollectionViewLayout:self heightForWidth:itemWidth atIndexPath:indexPath];
    
    //计算每一个item的位置
    CGFloat itemMinX = collectionContentInsetLeft + (itemWidth + self.columnSpacing) * [minColumnString floatValue];
    CGFloat itemMinY = [self.itemHeightDictionary[minColumnString] floatValue] + self.rowSpacing;
    
    //更新这一列的数值
    self.itemHeightDictionary[minColumnString] = @(itemMinY + itemHeight);
    
    //创建布局
    UICollectionViewLayoutAttributes *attributes = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
    attributes.frame = CGRectMake(itemMinX, itemMinY, itemWidth, itemHeight);
    
    return attributes;
}

//布局所有属性
- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect
{
    return [self.itemLayoutAttributeArray copy];
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
