//
//  XKContactTCell.m
//  CodingStandard
//
//  Created by MaoDenden on 2017/1/13.
//  Copyright © 2017年 xiaoku. All rights reserved.
//

#import "XKContactTCell.h"
#import "XKContactModel.h"

@interface XKContactTCell ()
@property (nonatomic, strong) XKContactModel *bind;
@end

@implementation XKContactTCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setBind:(XKContactModel *)bind controller:(UIViewController *)controller
{
    self.bind = bind;
    
    // 把数据绑定到界面
}

@end
