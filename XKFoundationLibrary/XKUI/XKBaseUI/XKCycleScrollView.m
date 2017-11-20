//
//  XKCycleScrollView.m
//  Pods-XKProj
//
//  Created by meishi on 20/11/2017.
//

#import "XKCycleScrollView.h"
#import "XKCycleScrollViewCell.h"

@interface XKCycleScrollView ()
<UICollectionViewDelegate, UICollectionViewDataSource>

@property(strong ,nonatomic) UICollectionView *collectionView;
@property(strong ,nonatomic) UICollectionViewFlowLayout *flowLayout;

@property(assign ,nonatomic) NSInteger totalItemsCount;
@end

@implementation XKCycleScrollView

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
    [self setupSubviews];
}

- (void)setupSubviews
{
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.minimumLineSpacing = 0;
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    _flowLayout = flowLayout;
    
    UICollectionView *mainView = [[UICollectionView alloc] initWithFrame:self.bounds collectionViewLayout:flowLayout];
    mainView.backgroundColor = [UIColor clearColor];
    mainView.pagingEnabled = YES;
    mainView.showsHorizontalScrollIndicator = NO;
    mainView.showsVerticalScrollIndicator = NO;
    [mainView registerClass:[XKCycleScrollViewCell class] forCellWithReuseIdentifier:NSStringFromClass([XKCycleScrollViewCell class])];
    
    mainView.dataSource = self;
    mainView.delegate = self;
    mainView.scrollsToTop = NO;
    [self addSubview:mainView];
    _collectionView = mainView;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    _flowLayout.itemSize = self.frame.size;
    
    _collectionView.frame = self.bounds;
    if (_collectionView.contentOffset.x == 0 &&  _totalItemsCount) {
        int targetIndex = 0;
        if (self.unlimited) {
            targetIndex = _totalItemsCount * 0.5;
        }else{
            targetIndex = 0;
        }
        [_collectionView scrollToItemAtIndexPath:[NSIndexPath indexPathForItem:targetIndex inSection:0] atScrollPosition:UICollectionViewScrollPositionNone animated:NO];
    }
}


#pragma mark - UICollectionViewDelegate, UICollectionViewDataSource

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return _totalItemsCount;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    XKCycleScrollViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:NSStringFromClass([XKCycleScrollViewCell class]) forIndexPath:indexPath];
    
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (void)setItemsArray:(NSArray *)itemsArray
{
    _itemsArray = itemsArray;
    
    _totalItemsCount = self.unlimited ? _itemsArray.count * 50 : _itemsArray.count;
    
    [_collectionView reloadData];
}
@end
