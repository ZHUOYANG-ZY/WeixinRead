//
//  ZYIdeaDeatliCell.h
//  微信读书
//
//  Created by kede on 2017/7/17.
//  Copyright © 2017年 kede. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZYIdeaDetailCellModel.h"

@interface ZYIdeaDeatliCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *cycleLine;
@property (weak, nonatomic) IBOutlet UIImageView *userHeaderImg;

@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel1;
@property (weak, nonatomic) IBOutlet UILabel *commentLabel2;

@property (strong, nonatomic) ZYIdeaDetailCellModel *ideaDetailModel;
@end
