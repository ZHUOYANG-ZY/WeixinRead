//
//  ZYPageDetailCellModel.m
//  微信读书
//
//  Created by kede on 2017/7/7.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "ZYPageDetailCellModel.h"

@implementation ZYPageDetailCellModel

- (CGFloat)commentViewHeight {
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

- (CGFloat)cellHeight {
    CGSize maxSize = CGSizeMake(SCREENWIDTH-70, MAXFLOAT);
    
    
    /*计算内容的高度*/
    //1.分享文字
    CGFloat textH1 = [self.commentTextString boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15.f]} context:nil].size.height;
        _cellHeight = 47* SCREENWIDTH/320 + textH1 + 56 * SCREENWIDTH/320 + 30;
    
    return _cellHeight;
}
@end
