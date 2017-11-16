//
//  MSSecondCollectionViewLayout.h
//  XKProj
//
//  Created by meishi on 2017/11/15.
//  Copyright © 2017年 Kangbo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MSSecondCollectionViewLayout : UICollectionViewLayout


/**
 每一列item之间的间距
 */
@property(assign ,nonatomic) CGFloat columnSpacing;


/**
 每一行item之间的间距
 */
@property(assign ,nonatomic) CGFloat rowSpacing;

/**
 collectionView边缘的间距
 */
@property(assign ,nonatomic) UIEdgeInsets collectionInset;

/**
 每一行排列的个数
 */
@property(assign ,nonatomic) NSInteger columnCount;
@end
