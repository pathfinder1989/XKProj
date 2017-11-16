//
//  XSecondController.m
//  XKProj
//
//  Created by meishi on 2017/11/15.
//  Copyright © 2017年 Kangbo. All rights reserved.
//

#import "XSecondController.h"
#import "MSCollectionView.h"

@interface XSecondController ()<UICollectionViewDelegate, UICollectionViewDataSource>
@property(strong ,nonatomic) MSCollectionView *collectionView;
@end

@implementation XSecondController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"second";
    
    
}
@end
