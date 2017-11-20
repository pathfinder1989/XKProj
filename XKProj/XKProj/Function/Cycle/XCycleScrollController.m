//
//  XCycleScrollController.m
//  XKProj
//
//  Created by meishi on 20/11/2017.
//  Copyright © 2017 Kangbo. All rights reserved.
//

#import "XCycleScrollController.h"


@interface XCycleScrollController ()

@property(strong ,nonatomic) XKCycleScrollView *scrollView;

@end

@implementation XCycleScrollController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"循环";
    
    self.scrollView = [[XKCycleScrollView alloc] init];
    self.scrollView.itemsArray = @[@"", @"", @"", @"", @"", @"", @"", @"", @""];
    [self.view addSubview:self.scrollView];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    self.scrollView.frame = CGRectMake(0, 180, CGRectGetWidth(self.view.frame), 160);
}


@end
