//
//  UIBarButtonItem+InitWithImageName.h
//  MiBo
//
//  Created by Miracolo Bosco on 15/1/5.
//  Copyright (c) 2015年 MI-31. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (InitWithImageName)

/**
 *  快速使用图片创建UIBarButtonItem
 *
 *  @param imageName     默认图片名称
 *  @param highImageName 选中状态的图片名称
 *  @param target        目标
 *  @param action        行为
 *
 *  @return <#return value description#>
 */
+ (UIBarButtonItem *)itemWithImageName:(NSString *)imageName highImageName:(NSString *)highImageName target:(id)target action:(SEL)action;

@end
