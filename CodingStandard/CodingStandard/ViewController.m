//
//  ViewController.m
//  CodingStandard
//
//  Created by MaoDenden on 2017/1/13.
//  Copyright © 2017年 xiaoku. All rights reserved.
//

// 尖括号, 引号，

#import "ViewController.h"
// Controller

#import "XKContactTCell.h"
// Model

#import "XKContactModel.h"
// ViewModel

// 工具类

#define SH [UIScreen mainScreen].bounds.size.height

static const CGFloat kRegisterButtonHeight = 44;         // 注册按钮高度


static NSString *cellIdentifier = @"cellIdentifier";


@interface ViewController ()<UITableViewDelegate, UITableViewDataSource, UINavigationBarDelegate, UICollectionViewDelegate>
{
    int mAge;
    NSString *mName;
}
// 模块， 控件、数据。

@property (nonatomic, strong) UIButton *nameButton;
@property (nonatomic, strong) UITableView *mainTableView;

@property (nonatomic, assign) int ageInt;
@property (nonatomic, strong) NSString *nameString;

@property (nonatomic, strong) NSMutableArray<XKContactModel *> *dataSource;
@end

@implementation ViewController
#pragma mark - 父类方法
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupUI];

//    前缀 MA 前两个字母
//    后缀 Controller Cell Model ViewModel Util View AlertView
//    第三方集成写到UIApplicationDelegate分类中

//    分类 前缀，方法名前缀

//    全称
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



/**
 默认初始值
 */

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)initControllerView
{
    // 联系人列表
    [self.mainTable registerClass:[XKContactTCell class] forCellReuseIdentifier:cellIdentifier];
    [self.view addSubview:_mainTableView];
}

- (UITableView *)mainTable {
    if (!_mainTableView) {
        _mainTableView = [[UITableView alloc] init];
        _mainTableView.delegate = self;
        _mainTableView.dataSource = self;
    }
    return _mainTableView;
}

#pragma mark - 初始化界面
- (void)setupUI {
    [self.view addSubview:self.nameButton];
    [self.view addSubview:self.mainTableView];
}

- (void)defaultSet {
    
}
#pragma mark - 事件方法
#pragma mark - UITableViewDataSource
#pragma mark - UITableViewDelegate
#pragma mark - 懒加载

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    XKContactTCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    return cell;
}



- (void)eat:(NSString *)water {
    
}
@end
