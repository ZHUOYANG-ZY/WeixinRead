//
//  ZYIdeaDetailCellModel.m
//  微信读书
//
//  Created by kede on 2017/7/17.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "ZYIdeaDetailCellModel.h"

@implementation ZYIdeaDetailCellModel

- (CGFloat)cellHeight {
    CGSize maxSize = CGSizeMake(SCREENWIDTH - 70, MAXFLOAT);
    
    CGFloat textH1 = [self.commentTextString boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15.f]} context:nil].size.height;
    _cellHeight = 50*SCREENWIDTH/320 + 18+ 30 + 20 + 87 * SCREENWIDTH/320 + 20 + textH1;
    return _cellHeight;
}

- (CGFloat) commentViewHeight{
    CGSize maxSize1 = CGSizeMake(SCREENWIDTH-70, MAXFLOAT); //label的size，label的宽度，高度随便，不过尽量大，我这里用了最大
    
    /*计算评论内容的高度*/
    //1.评论文字1
    CGFloat textH2 = [self.commentTextString1 boundingRectWithSize:maxSize1 options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12.f]} context:nil].size.height;
    //2.评论文字2
    CGFloat textH3 = [self.commentTextString2 boundingRectWithSize:maxSize1 options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12.f]} context:nil].size.height;
    
    //1.评论父试图
    _commentViewHeight = 10+ 13.5+ 15 + textH2 + 10 + textH3 +10+27+2.5; //从view里第一个控件开始到最后一个之间的高度都要加上
    return _commentViewHeight;
}
@end
