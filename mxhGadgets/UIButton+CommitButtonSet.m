//
//  UIButton+CommitButtonSet.m
//  PinMall
//
//  Created by YangXu on 14/12/4.
//  Copyright (c) 2014年 365sji. All rights reserved.
//

#import "UIButton+CommitButtonSet.h"

@implementation UIButton (CommitButtonSet)

- (void)setCommitButtonStyleWithTitle:(NSString *)title titleFont:(UIFont *)font titleColor:(UIColor *)color
{
    [self setBackgroundColor:[UIColor redColor]];
    [self setTitleColor:color forState:UIControlStateNormal];
    [self setTitle:title forState:UIControlStateNormal];
    self.titleLabel.font=font;
}

@end
