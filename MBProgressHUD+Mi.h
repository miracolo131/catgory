//
//  MBProgressHUD+Mi.h
//  MiBo
//
//  Created by Miracolo Bosco on 15/1/4.
//  Copyright (c) 2015年 MI-31. All rights reserved.
//

#import "MBProgressHUD.h"

@interface MBProgressHUD (Mi)

/**
 *  快速显示信息
 *
 *  @param message 需要显示的信息
 *  @param view    信息显示的view
 *
 *  @return 
 */
+ (MBProgressHUD *)showMessage:(NSString *)message toView:(UIView *)view;

/**
 *  显示提示内容
 *
 *  @param message 显示提示内容
 *
 *  @return 
 */
+ (MBProgressHUD *)showMessage:(NSString *)message;

/**
 *  从指定view上隐藏HUD
 *
 *  @param view
 */
+ (void)hideHUDForView:(UIView *)view;

/**
 *  隐藏hud
 */
+ (void)hideHUD;
@end
