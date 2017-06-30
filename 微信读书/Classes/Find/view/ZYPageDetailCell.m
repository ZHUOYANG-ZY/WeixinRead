//
//  ZYPageDetailCell.m
//  微信读书
//
//  Created by kede on 2017/6/20.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "ZYPageDetailCell.h"

@implementation ZYPageDetailCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.desLabel.text = @"舒婷说：“我很幸运，生长在这样一个南方岛屿，春夏秋冬，日日夜夜，与绿树鲜花呼吸与共”。鼓浪屿就是这样一个让人着迷的地方。";
    self.comment1Label.text =@"我很幸运，生长在这样一个南方岛屿，春夏秋冬，日日夜夜，与绿树鲜花呼吸与共”。鼓浪屿就是这样一个让人着迷的地方。";
    self.comment2Label.text = @"我很幸运，生长在这样一个南方岛屿，春夏秋冬，日日夜夜，与绿树鲜花呼吸与共”。鼓浪屿就是这样一个让人着迷的地方。";
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
