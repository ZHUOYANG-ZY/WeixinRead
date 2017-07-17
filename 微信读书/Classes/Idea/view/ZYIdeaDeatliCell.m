//
//  ZYIdeaDeatliCell.m
//  微信读书
//
//  Created by kede on 2017/7/17.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "ZYIdeaDeatliCell.h"

@implementation ZYIdeaDeatliCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.userHeaderImg.layer.cornerRadius = 20 * SCREENWIDTH/320;
    self.userHeaderImg.layer.masksToBounds = YES;
    
    self.cycleLine.layer.cornerRadius = 3;
    self.cycleLine.layer.masksToBounds = YES;
    self.cycleLine.layer.borderWidth = 0.3;
    self.cycleLine.layer.borderColor = [UIColor lightGrayColor].CGColor;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setIdeaDetailModel:(ZYIdeaDetailCellModel *)ideaDetailModel {
    _ideaDetailModel = ideaDetailModel;
    
    self.contentLabel.text = ideaDetailModel.commentTextString;
    self.commentLabel1.text = ideaDetailModel.commentTextString1;
    self.commentLabel2.text = ideaDetailModel.commentTextString2;
}

@end
