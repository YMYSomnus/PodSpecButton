//
//  UIButton+JKNAdditions.m
//  PAJKCardApp
//
//  Created by wangweishun on 7/15/14.
//  Copyright (c) 2014 Ping An Health Insurance Company of China, Ltd. All rights reserved.
//

#import "UIButton+JKNAdditions.h"

@implementation UIButton (JKNAdditions)

- (void)jkn_setTitlePositionWithType:(JKNButtonTitlePostionType)type space:(CGFloat)space
{
     CGSize imageSize = self.imageView.frame.size;
     CGSize titleSize = self.titleLabel.frame.size;
    switch (type) {
        case JKNButtonTitlePostionTypeBottom: {
            self.titleEdgeInsets = UIEdgeInsetsMake(0, - imageSize.width, - (imageSize.height + space), 0);
            self.imageEdgeInsets = UIEdgeInsetsMake(-(titleSize.height + space), 0, 0, - titleSize.width);
            break;
        }
        case JKNButtonTitlePostionTypeTop: {
            self.titleEdgeInsets = UIEdgeInsetsMake(-(imageSize.height + space), -imageSize.width, 0, 0);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, -(titleSize.height + space), -titleSize.width);
            break;
        }
        case JKNButtonTitlePostionTypeLeft: {
            self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -(titleSize.width + space + imageSize.width));
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -(titleSize.width + space + imageSize.width), 0,  0);
            break;
        }
        case JKNButtonTitlePostionTypeRight: {
            self.titleEdgeInsets = UIEdgeInsetsMake(0, space, 0, 0);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, space);
            break;
        }
        default:
            break;
    }
}

@end
