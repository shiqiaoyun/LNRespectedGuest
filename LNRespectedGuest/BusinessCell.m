//
//  BusinessCell.m
//  LNRespectedGuest
//
//  Created by Barry on 15/11/28.
//  Copyright © 2015年 Yun. All rights reserved.
//

#import "BusinessCell.h"

@implementation BusinessCell
/**
 *  get方法
 */
//- (void)setGuiRenBtn:(UIButton *)GuiRenBtn{
//    _GuiRenBtn = GuiRenBtn;
//    _GuiQuanBtn.titleLabel.font = [UIFont systemFontOfSize:11];
//}

- (void)awakeFromNib {
    // Initialization code
    self.GuiQuanBtn.titleLabel.font = [UIFont systemFontOfSize:14.];//button上字体的大小
    self.GuiQuanBtn.layer.cornerRadius = 6.0;//圆角
    
    self.GuiYuanBtn.titleLabel.font = [UIFont systemFontOfSize:14.];
    self.GuiYuanBtn.layer.cornerRadius = 6.0;//圆角
    
    self.GuiRenBtn.titleLabel.font = [UIFont systemFontOfSize:14.];
    self.GuiRenBtn.layer.cornerRadius = 6.0;//圆角

}
/**
 *  贵圈
 */
- (IBAction)guiQuanBtn:(UIButton *)sender {
    LKLog(@"贵圈");
}
/**
 *  贵员
 */
- (IBAction)guiYuanBtn:(UIButton *)sender {
    LKLog(@"贵员");
}
/**
 *  贵人
 */
- (IBAction)guiRenBtn:(UIButton *)sender {
    LKLog(@"贵人");
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
