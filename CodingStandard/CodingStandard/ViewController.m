//
//  ViewController.m
//  CodingStandard
//
//  Created by MaoDenden on 2017/1/13.
//  Copyright © 2017年 xiaoku. All rights reserved.
//

#import "ViewController.h"
// Controller
#import "XKContactTCell.h"
// Model
#import "XKContactModel.h"
// ViewModel

// 工具类

static const CGFloat kRegisterButtonHeight = 44;         // 注册按钮高度
static NSString *cellIdentifier = @"cellIdentifier";


@interface ViewController ()<UITableViewDelegate, UITableViewDataSource>
{
    int mAge;
    NSString *name;
}

@property (nonatomic, strong) UIButton *nameButton;
@property (nonatomic, strong) UITableView *mainTable;

@property (nonatomic, assign) int ageInt;
@property (nonatomic, strong) NSString *nameString;

@property (nonatomic, strong) NSMutableArray<XKContactModel *> *dataSource;
@end

@implementation ViewController
#pragma mark - 父类方法
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self initControllerView];
    
//    UIImage
//    UIColor
    
//    UIImageView -----------------> 
//    UIButton
//    UIView
//    UITableView
//    UILabel
//    UITextView
//    UITableViewCell
//    UITextField
//    UIViewController
//    UICollectionView
//    UICollectionViewCell
//    UIWindow
//    UISwitch
//    UITabBarController
//    UITabBar
//    UITabBarItem
//    UIWebView
//    UIScrollView
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 界面初始化
- (void)initControllerView
{
    // 联系人列表
    [self.mainTable registerClass:[XKContactTCell class] forCellReuseIdentifier:cellIdentifier];
    [self.view addSubview:_mainTable];
}

- (UITableView *)mainTable
{
    if (!_mainTable) {
        _mainTable = [[UITableView alloc] init];
        _mainTable.delegate = self;
        _mainTable.dataSource = self;
    }
    return _mainTable;
}

#pragma mark - 数据显示到界面


#pragma mark - 点击事件



#pragma mark - tableView
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    XKContactTCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    return cell;
}
#pragma mark - 通知

#pragma mark - 方法
- (void)eat:(NSString *)water
{
    
}
@end
