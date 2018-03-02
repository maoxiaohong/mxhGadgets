//
//  ViewController.m
//  mxhGadgets
//
//  Created by maoxiaohong on 2018/3/1.
//  Copyright © 2018年 maomao. All rights reserved.
//

#import "ViewController.h"
@import mxhGadgets;
//#import <mxhGadgets/UIButton+CommitButtonSet.h>
//#import <mxhGadgets/AdaptiveLayoutHelper.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setCommitButtonStyleWithTitle:@"hello" titleFont:[UIFont systemFontOfSize:16] titleColor:[UIColor yellowColor]];
    button.frame = CGRectMake(PX(120), PX(120), PX(80), PX(80));
    [self.view addSubview:button];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
