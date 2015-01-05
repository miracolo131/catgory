//
//  MBProgressHUD+Mi.m
//  MiBo
//
//  Created by Miracolo Bosco on 15/1/4.
//  Copyright (c) 2015年 MI-31. All rights reserved.
//

#import "MBProgressHUD+Mi.h"

@implementation MBProgressHUD (Mi)

+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view
{
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.labelText = message;
    
    hud.removeFromSuperViewOnHide = YES;
    
    // 需要蒙版效果
    hud.dimBackground = YES;
    
    return  hud;
}

+ (MBProgressHUD *)showMessage:(NSString *)message
{
    return [self showMessage:message toView:nil];
}

+ (void)hideHUDForView:(UIView *)view
{
    if (view == nil) {
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    
    [self hideHUDForView:view animated:YES];
}

+ (void)hideHUD
{
    [self hideHUDForView:nil];
}
@end
