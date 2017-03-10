//
//  UIButton+JKNAdditions.h
//  PAJKCardApp
//
//  Created by wangweishun on 7/15/14.
//  Copyright (c) 2014 Ping An Health Insurance Company of China, Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, JKNButtonTitlePostionType) {
    JKNButtonTitlePostionTypeBottom = 0,        // text below the image
    JKNButtonTitlePostionTypeTop,               // text above the image
    JKNButtonTitlePostionTypeLeft,              // text on the left of the image
    JKNButtonTitlePostionTypeRight              // text on the right of the image
};

@interface UIButton (JKNAdditions)

/**
*  @param type  the title position
*  @param space the space between the image and text
*/
- (void)jkn_setTitlePositionWithType:(JKNButtonTitlePostionType)type space:(CGFloat)space;

@end
