//
//  ViewController.h
//  CodingStandard
//
//  Created by MaoDenden on 2017/1/13.
//  Copyright © 2017年 xiaoku. All rights reserved.
//

#import <UIKit/UIKit.h>

//@class AppDelegate, ViewController;

typedef enum : NSUInteger {
    VCMeaningTypeA,
    VCMeaningTypeB,
    VCMeaningTypeC,
} VCMeaningType;

@interface ViewController : UIViewController
#pragma mark - 属性

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
- (void)eat:(NSString *)water;


@end

