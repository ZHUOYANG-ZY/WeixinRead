//
//  ZYIdeaDetailCellModel.h
//  微信读书
//
//  Created by kede on 2017/7/17.
//  Copyright © 2017年 kede. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZYIdeaDetailCellModel : NSObject
/*分享文字*/
@property (copy, nonatomic) NSString *commentTextString;
/*评论1 */
@property (copy, nonatomic) NSString *commentTextString1;
/*评论2 */
@property (copy, nonatomic) NSString *commentTextString2;

/*各 view 高度*/
@property (assign, nonatomic) CGFloat cellHeight; //除评论父试图外的高度
@property (assign, nonatomic) CGFloat commentViewHeight; //评论父试图高度
@end
