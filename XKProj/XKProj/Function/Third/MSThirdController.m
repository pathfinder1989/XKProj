//
//  MSThirdController.m
//  XKProj
//
//  Created by meishi on 2017/11/17.
//  Copyright © 2017年 Kangbo. All rights reserved.
//

#import "MSThirdController.h"
#import "MSTableView.h"
#import "MSThirdTableCell.h"
#import "MSThirdModel.h"
#import "XCycleScrollController.h"

@interface MSThirdController ()
<UITableViewDelegate, UITableViewDataSource>
@property(strong ,nonatomic) MSTableView *tableView;
@property(strong ,nonatomic) NSMutableArray *dataArray;
@end

@implementation MSThirdController

#pragma mark - lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"third";
    [self.view addSubview:self.tableView];
    
    [self loadData];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    _tableView.frame = self.view.bounds;
}

#pragma mark - loadData
- (void)loadData
{
    [self.dataArray addObject:[self itemModelWithTitle:@"改变状态栏颜色" selector:@selector(updateStatusBarStyle)]];
    [self.dataArray addObject:[self itemModelWithTitle:@"循环滚动cycle" selector:@selector(cycleScroll)]];
    [self.tableView reloadData];
}

- (MSThirdModel *)itemModelWithTitle:(NSString *)title selector:(SEL)selector
{
    MSThirdModel *item1Model = [[MSThirdModel alloc] init];
    item1Model.title = title;
    item1Model.selector = selector;
    
    return item1Model;
}

#pragma mark - UITableViewDelegate, UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MSThirdTableCell *cell = [self.tableView dequeueReusableCellWithIdentifier:NSStringFromClass([MSThirdTableCell class]) forIndexPath:indexPath];
    
    MSThirdModel *itemModel = self.dataArray[indexPath.row];
    cell.textLabel.text = itemModel.title;
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    MSThirdModel *itemModel = self.dataArray[indexPath.row];
    [self performSelector:itemModel.selector];
}

#pragma mark - actions
- (void)updateStatusBarStyle
{
    NSInteger sbarstyle = [self.statusBarStyle integerValue];
    sbarstyle = !sbarstyle;
    self.statusBarStyle = [NSNumber numberWithInteger:sbarstyle];
    
}

- (void)cycleScroll
{
    XCycleScrollController *controller = [XCycleScrollController new];
    [self.navigationController pushViewController:controller animated:YES];
}


#pragma mark - property
- (MSTableView *)tableView
{
    if (!_tableView) {
        _tableView = [[MSTableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.backgroundColor = [UIColor clearColor];
        
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[MSThirdTableCell class] forCellReuseIdentifier:NSStringFromClass([MSThirdTableCell class])];
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
