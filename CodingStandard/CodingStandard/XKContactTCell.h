//
//  XKContactTCell.h
//  CodingStandard
//
//  Created by MaoDenden on 2017/1/13.
//  Copyright © 2017年 xiaoku. All rights reserved.
//

#import <UIKit/UIKit.h>

@class XKContactModel;

@interface XKContactTCell : UITableViewCell
//
- (void)setBind:(XKContactModel *)bind controller:(UIViewController *)controller;
@end
