//
//  BSConfig.h
//  微信读书
//
//  Created by kede on 2017/6/16.
//  Copyright © 2017年 kede. All rights reserved.
//

#ifndef BSConfig_h
#define BSConfig_h



/*16进制颜色转换*/
#define UIColorWithHex(hexValue) [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0 \
green:((float)((hexValue & 0xFF00) >> 8))/255.0 \
blue:((float)(hexValue & 0xFF))/255.0 alpha:1]

/**
 RGB颜色
 */
#define RGBColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]

/*屏幕 宽高*/
#define SCREENWIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREENHEIGHT ([UIScreen mainScreen].bounds.size.height)
#endif /* BSConfig_h */
