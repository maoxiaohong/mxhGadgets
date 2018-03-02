//
//  UIButton+CommitButtonSet.h
//  PinMall
//
//  Created by YangXu on 14/12/4.
//  Copyright (c) 2014年 365sji. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (CommitButtonSet)

/**
 @author 杨旭, 14-12-04 10:12:40
 
 @brief  设置默认的提交按钮样式:主要是背景图的设置
 @param title 文字
 @param font  字体
 @param color 颜色
 */
- (void)setCommitButtonStyleWithTitle:(NSString *)title titleFont:(UIFont *)font titleColor:(UIColor *)color;

@end
