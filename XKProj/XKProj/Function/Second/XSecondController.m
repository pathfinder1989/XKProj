//
//  XSecondController.m
//  XKProj
//
//  Created by meishi on 2017/11/15.
//  Copyright © 2017年 Kangbo. All rights reserved.
//

#import "XSecondController.h"
#import "MSCollectionView.h"
#import "MSSecondCollectionViewLayout.h"
#import "MSSecondCollectionCell.h"

@interface XSecondController ()
<UICollectionViewDelegate, UICollectionViewDataSource, MSSecondCollectionViewLayoutDelegate>

@property(strong ,nonatomic) MSCollectionView *collectionView;
@property(strong ,nonatomic) MSSecondCollectionViewLayout *collectionViewLayout;

@property(strong ,nonatomic) NSMutableArray *dataArray;
@end

@implementation XSecondController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"second";
    
    [self.view addSubview:self.collectionView];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    _collectionView.frame = self.view.bounds;
}

#pragma mark - UICollectionViewDelegate, UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 30;
    return self.dataArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    MSSecondCollectionCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([MSSecondCollectionCell class]) forIndexPath:indexPath];
    
    return cell;
}

#pragma mark - MSSecondCollectionViewLayoutDelegate
- (CGFloat)secondCollectionViewLayout:(MSSecondCollectionViewLayout *)flowLayout heightForWidth:(CGFloat)width atIndexPath:(NSIndexPath *)indexPath
{
    BOOL isThree = indexPath.row % 3 == 0;
    return isThree ? 100 : 80;
}

#pragma mark - property
- (MSCollectionView *)collectionView
{
    if (!_collectionView) {
        _collectionView = [[MSCollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:self.collectionViewLayout];
        _collectionView.backgroundColor = [UIColor clearColor];
        _collectionView.delegate = self;
        _collectionView.dataSource = self;
        [_collectionView registerClass:[MSSecondCollectionCell class] forCellWithReuseIdentifier:NSStringFromClass([MSSecondCollectionCell class])];
    }
    return _collectionView;
}

- (MSSecondCollectionViewLayout *)collectionViewLayout
{
    if (!_collectionViewLayout) {
        _collectionViewLayout = [MSSecondCollectionViewLayout new];
        _collectionViewLayout.columnCount = 2;
        _collectionViewLayout.collectionInset = UIEdgeInsetsMake(0, 10, 0, 10);
        _collectionViewLayout.rowSpacing = 10;
        _collectionViewLayout.columnSpacing = 10;
        _collectionViewLayout.delegtate = self;
    }
    return _collectionViewLayout;
}

- (NSMutableArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
    }
    return _dataArray;
}
@end
