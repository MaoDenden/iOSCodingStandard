//
//  ViewController.h
//  CodingStandard
//
//  Created by MaoDenden on 2017/1/13.
//  Copyright © 2017年 xiaoku. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AppDelegate, ViewController;

typedef void(^MyBlock)();

@protocol MAViewControllerDelegate<NSObject>

@optional
//- ()

@end

// 枚举MA+Class名+意义
typedef enum : NSUInteger {
    VCMeaningTypeA,
    VCMeaningTypeB,
    VCMeaningTypeC,
} VCMeaningType;

//    Block，枚举, delegate,

@interface ViewController : UIViewController
#pragma mark - 属性
//    先原子性，内存管理属性
/**
 控制器顶部颜色
 */
@property (nonatomic, strong) UIColor *topColor;

/**
 控制器顶部颜色
 */
@property (nonatomic, strong) UIColor *bottomColor;


#pragma mark - 方法

/**
 喝东西方法

 @param water 可以喝得东西
 */

/**
 <#Description#>

 @param water <#water description#>
 */
- (void)eat:(NSString *)water;


@end

