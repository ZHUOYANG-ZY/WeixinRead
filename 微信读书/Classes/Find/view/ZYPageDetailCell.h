//
//  ZYPageDetailCell.h
//  微信读书
//
//  Created by kede on 2017/6/20.
//  Copyright © 2017年 kede. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ZYPageDetailCellModel;

@interface ZYPageDetailCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *desLabel;
@property (weak, nonatomic) IBOutlet UILabel *comment1Label;
@property (weak, nonatomic) IBOutlet UILabel *comment2Label;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *commentViewHeight;


@property (strong, nonatomic) ZYPageDetailCellModel *pageDetailModel;
@end
