//
//  ZYPageDetailCellModel.h
//  微信读书
//
//  Created by kede on 2017/7/7.
//  Copyright © 2017年 kede. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZYPageDetailCellModel : NSObject
/*分享文字*/
@property (copy, nonatomic) NSString *commentTextString;
/*评论1 */
@property (copy, nonatomic) NSString *commentTextString1;
/*评论2 */
@property (copy, nonatomic) NSString *commentTextString2;

@property (assign, nonatomic) CGFloat cellHeight;

@end
