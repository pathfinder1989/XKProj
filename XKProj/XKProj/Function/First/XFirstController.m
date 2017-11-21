//
//  XFirstController.m
//  XKProj
//
//  Created by meishi on 2017/11/15.
//  Copyright © 2017年 Kangbo. All rights reserved.
//

#import "XFirstController.h"
#import "MSTableView.h"
#import "MSFirstTableCell.h"
#import "XFont.h"

@interface XFirstController ()
<UITableViewDelegate, UITableViewDataSource>
@property(strong ,nonatomic) MSTableView *tableView;
@property(strong ,nonatomic) NSMutableArray *dataArray;
@end

@implementation XFirstController

#pragma mark - lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"first";
    
    [self.view addSubview:self.tableView];
    
    UIFontWithSize(13);
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    _tableView.frame = self.view.bounds;
}

#pragma mark - UITableViewDelegate, UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MSFirstTableCell *cell = [self.tableView dequeueReusableCellWithIdentifier:NSStringFromClass([MSFirstTableCell class]) forIndexPath:indexPath];
    
    cell.textLabel.text = self.dataArray[indexPath.row];
    
    return cell;
}

#pragma mark - property
- (MSTableView *)tableView
{
    if (!_tableView) {
        _tableView = [[MSTableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.backgroundColor = [UIColor clearColor];
        
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[MSFirstTableCell class] forCellReuseIdentifier:NSStringFromClass([MSFirstTableCell class])];
    }
    return _tableView;
}

- (NSMutableArray *)dataArray
{
    if (!_dataArray) {
        _dataArray = [NSMutableArray new];
    }
    return _dataArray;
}
@end
