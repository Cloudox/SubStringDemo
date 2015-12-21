//
//  ViewController.m
//  SubStringDemo
//
//  Created by Cloudox on 15/12/21.
//  Copyright (c) 2015年 Cloudox. All rights reserved.
//

#import "ViewController.h"

//设备的宽高
#define SCREENWIDTH       [UIScreen mainScreen].bounds.size.width
#define SCREENHEIGHT      [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 存放原字符串的label
    UILabel *originalLabel = [[UILabel alloc] initWithFrame:CGRectMake((SCREENWIDTH - 250) / 2, 200, 250, 20)];
    originalLabel.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:originalLabel];
    // 存放下标之前的子字符串
    UILabel *toLabel = [[UILabel alloc] initWithFrame:CGRectMake((SCREENWIDTH - 250) / 2, 230, 250, 20)];
    toLabel.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:toLabel];
    // 存放下标之后的子字符串
    UILabel *fromLabel = [[UILabel alloc] initWithFrame:CGRectMake((SCREENWIDTH - 250) / 2, 260, 250, 20)];
    fromLabel.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:fromLabel];
    // 存放下标之间的子字符串
    UILabel *subLabel = [[UILabel alloc] initWithFrame:CGRectMake((SCREENWIDTH - 250) / 2, 290, 250, 20)];
    subLabel.textAlignment = NSTextAlignmentLeft;
    [self.view addSubview:subLabel];
    
    // 原字符串
    NSString *originalStr = @"Hello World";
    // 下标之前的子字符串，不含下标对应的字符
    NSString *toStr = [originalStr substringToIndex:5];
    // 结果为“Hello”
    // 下标之后的子字符串，包含下标对应字符
    NSString *fromStr = [originalStr substringFromIndex:6];
    // 结果为“World”
    // 下标之间的子字符串：第一个参数为开始下标，第二个参数为长度
    NSString *subStr = [originalStr substringWithRange:NSMakeRange(6, 2)];
    // 结果为“Wo”
    
    // 放入label显示
    originalLabel.text = [NSString stringWithFormat:@"原字符串：%@", originalStr];
    toLabel.text = [NSString stringWithFormat:@"下标5之前的字符串：%@", toStr];
    fromLabel.text = [NSString stringWithFormat:@"下标6之后的字符串：%@", fromStr];
    subLabel.text = [NSString stringWithFormat:@"下标6后2位的字符串：%@", subStr];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
