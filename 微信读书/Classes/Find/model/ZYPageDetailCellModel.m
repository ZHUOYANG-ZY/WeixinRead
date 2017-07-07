//
//  ZYPageDetailCellModel.m
//  微信读书
//
//  Created by kede on 2017/7/7.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "ZYPageDetailCellModel.h"

@implementation ZYPageDetailCellModel

- (CGFloat)cellHeight {
    CGSize maxSize = CGSizeMake(SCREENWIDTH-70, MAXFLOAT);
    CGSize maxSize1 = CGSizeMake(SCREENWIDTH-86, MAXFLOAT);
    
    /*计算内容的高度*/
    //1.分享文字
    CGFloat textH1 = [self.commentTextString boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:15.f]} context:nil].size.height;
    
    CGFloat textH2 = [self.commentTextString1 boundingRectWithSize:maxSize1 options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12.f]} context:nil].size.height;
    
    CGFloat textH3 = [self.commentTextString2 boundingRectWithSize:maxSize1 options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:12.f]} context:nil].size.height;
    
    _cellHeight = 40+15+textH1+ +47+35+44+ textH2+textH3 + 16 ;
    
    NSLog(@"ceh -- %f %f %f",textH1,textH2,textH3);
    return _cellHeight;
}
@end
