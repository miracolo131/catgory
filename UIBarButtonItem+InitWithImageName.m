//
//  UIBarButtonItem+InitWithImageName.m
//  MiBo
//
//  Created by Miracolo Bosco on 15/1/5.
//  Copyright (c) 2015年 MI-31. All rights reserved.
//

#import "UIBarButtonItem+InitWithImageName.h"
#import "UIView+Mi.h"

@implementation UIBarButtonItem (InitWithImageName)

+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName highImageName:(NSString *)highImageName target:(id)target action:(SEL)action
{
    UIButton *button = [[UIButton alloc] init];
    [button setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    
    // 设置按钮的尺寸为背景图片的尺寸
    button.size = button.currentBackgroundImage.size;
    
    // 监听按钮点击
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

@end
