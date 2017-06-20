//
//  ZYScrollView.m
//  微信读书
//
//  Created by kede on 2017/6/16.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "ZYScrollView.h"
#import "ZYPageView.h"

@interface ZYScrollView ()<ZYPageViewDelegate>
@property (strong, nonatomic) UIImageView *imageView;

@end

@implementation ZYScrollView

- (id)initWithFrame:(CGRect)frame {
    if ([super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor clearColor];
//        [self addScrollView];
//        [self addImageView];
        
//        self.clipsToBounds = YES;
    }
    return self;
}

- (void)addScrollView:(NSInteger)pageCount {
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(27.5, 74, SCREENWIDTH-35*2 + 15, SCREENHEIGHT-64-49-20)];
    _scrollView.backgroundColor = [UIColor clearColor];
    _scrollView.clipsToBounds = NO;
    _scrollView.pagingEnabled = YES;
    _scrollView.contentSize = CGSizeMake((SCREENWIDTH - 35*2 +15)*pageCount , SCREENHEIGHT-64-49-20);
    NSLog(@"%f",_scrollView.contentSize.width);
    _scrollView.showsHorizontalScrollIndicator = NO;
    [self addSubview:_scrollView];
}

- (void)addImageView:(NSInteger)pageCount {
   
    for (int i=0; i<pageCount; i++) {

        UIView *view = [[UIView alloc] initWithFrame:CGRectMake((SCREENWIDTH-35*2 +15)*i, 0, SCREENWIDTH - 35*2 + 15, SCREENHEIGHT - 64 - 49 - 20)];
        view.backgroundColor = [UIColor clearColor];
        
        _pageView = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([ZYPageView class]) owner:self options:nil][0];
        _pageView.tapView.tag = i;
        _pageView.frame = CGRectMake( 7.5, 0, SCREENWIDTH-35*2, SCREENHEIGHT-64-49-20);
 
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickPage:)];
        [self.pageView.tapView addGestureRecognizer:tap];
        
        _pageView.backgroundColor = [UIColor whiteColor];
        _pageView.layer.cornerRadius = 5;
        _pageView.layer.masksToBounds = YES;

        
        [view addSubview:self.pageView];
        [self.scrollView addSubview:view];
        
         NSLog(@"tag -- %ld",_pageView.tapView.tag);
    }
    
   
}

- (void)clickPage:(UITapGestureRecognizer *)ges {
    if ([self.delegate respondsToSelector:@selector(clickPagePushToDetailView:)]) {
        [self.delegate clickPagePushToDetailView:ges.view.tag];
    }
}

#pragma mark - hitTest
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    UIView *view = [super hitTest:point withEvent:event];
    if ([view isEqual:self]) {
        for (UIView *subview in _scrollView.subviews) {
            CGPoint offset = CGPointMake(point.x - _scrollView.frame.origin.x + _scrollView.contentOffset.x - subview.frame.origin.x, point.y - _scrollView.frame.origin.y + _scrollView.contentOffset.y - subview.frame.origin.y);
            
            if ((view = [super hitTest:offset withEvent:event])) {
                return view;
            }
        }
        return _scrollView;
    }
    return view;
}
@end
