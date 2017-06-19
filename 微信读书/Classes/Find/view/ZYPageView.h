//
//  ZYPageView.h
//  微信读书
//
//  Created by kede on 2017/6/19.
//  Copyright © 2017年 kede. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol ZYPageViewDelegate <NSObject>

- (void)clickPagePushToDetailView:(NSInteger)sender;

@end

@interface ZYPageView : UIView
@property (weak, nonatomic) IBOutlet UIImageView *tapView;

@property (weak, nonatomic)id<ZYPageViewDelegate> delegate;
@end
