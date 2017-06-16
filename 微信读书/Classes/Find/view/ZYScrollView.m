//
//  ZYScrollView.m
//  微信读书
//
//  Created by kede on 2017/6/16.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "ZYScrollView.h"

@interface ZYScrollView ()
@property (strong, nonatomic) UIImageView *imageView;

@end

@implementation ZYScrollView

- (id)initWithFrame:(CGRect)frame {
    if ([super initWithFrame:frame]) {
        
        self.backgroundColor = [UIColor clearColor];
        [self addScrollView];
        [self addImageView];
        
//        self.clipsToBounds = YES;
    }
    return self;
}

- (void)addScrollView {
    _scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(35, 74, SCREENWIDTH-35*2, SCREENHEIGHT-64-49-20)];
    _scrollView.backgroundColor = [UIColor whiteColor];
    _scrollView.clipsToBounds = NO;
    _scrollView.pagingEnabled = YES;
    _scrollView.contentSize = CGSizeMake((SCREENWIDTH - 35*2)*3 , SCREENHEIGHT-64-49-20);
    NSLog(@"%f",_scrollView.contentSize.width);
    [self addSubview:_scrollView];
}

- (void)addImageView {
    for (int i=0; i<3; i++) {
        if (i==0) {
             _imageView = [[UIImageView alloc] initWithFrame:CGRectMake( 0, 0, SCREENWIDTH-35*2, SCREENHEIGHT-64-49-20)];
        } else {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake( (SCREENWIDTH-35*2 +15)*i , 0, SCREENWIDTH-35*2, SCREENHEIGHT-64-49-20)];
        }
        _imageView.image = [UIImage imageNamed:@"image"];
        NSLog(@"%f",_imageView.frame.origin.x);
        [self.scrollView addSubview:_imageView];
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
