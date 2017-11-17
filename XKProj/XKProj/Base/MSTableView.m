//
//  MSTableView.m
//  XKProj
//
//  Created by meishi on 2017/11/15.
//  Copyright © 2017年 Kangbo. All rights reserved.
//

#import "MSTableView.h"

@implementation MSTableView

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initialization];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame:frame style:style];
    if (self) {
        [self initialization];
    }
    return self;
}

- (void)initialization
{
    self.separatorStyle = UITableViewCellSeparatorStyleNone;
}

@end
