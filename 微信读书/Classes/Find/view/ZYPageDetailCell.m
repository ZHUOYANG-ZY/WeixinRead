//
//  ZYPageDetailCell.m
//  微信读书
//
//  Created by kede on 2017/6/20.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "ZYPageDetailCell.h"
#import "ZYPageDetailCellModel.h"

@implementation ZYPageDetailCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    [self.desLabel sizeToFit];
}

- (void)setPageDetailModel:(ZYPageDetailCellModel *)pageDetailModel {
    _pageDetailModel = pageDetailModel;
    
    self.desLabel.text = pageDetailModel.commentTextString;
    self.comment1Label.text = pageDetailModel.commentTextString1;
    self.comment2Label.text = pageDetailModel.commentTextString2;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
