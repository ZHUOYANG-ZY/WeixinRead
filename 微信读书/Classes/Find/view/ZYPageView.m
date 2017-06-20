//
//  ZYPageView.m
//  微信读书
//
//  Created by kede on 2017/6/19.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "ZYPageView.h"

@interface ZYPageView ()

@property (weak, nonatomic) IBOutlet UIImageView *readUserImage;


@end


@implementation ZYPageView

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.readUserImage.layer.cornerRadius = 37/2;
    self.readUserImage.layer.masksToBounds = YES;
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickPage:)];
//    [self.tapView addGestureRecognizer:tap];
}

- (void)clickPage:(UITapGestureRecognizer *)ges {
    if ([self.delegate respondsToSelector:@selector(clickPagePushToDetailView:)]) {
        [self.delegate clickPagePushToDetailView:ges.view.tag];
    }
}

@end
