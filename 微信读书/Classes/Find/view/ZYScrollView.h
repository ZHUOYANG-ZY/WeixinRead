//
//  ZYScrollView.h
//  微信读书
//
//  Created by kede on 2017/6/16.
//  Copyright © 2017年 kede. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZYPageView.h"

@interface ZYScrollView : UIView
@property (strong, nonatomic) UIScrollView *scrollView;
@property (strong, nonatomic) ZYPageView *pageView;

- (void)addScrollView:(NSInteger)pageCount;
- (void)addImageView:(NSInteger)pageCount;
@end
