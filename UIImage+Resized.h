//
//  UIImage+Resized.h
//  MiBo
//
//  Created by Miracolo Bosco on 15/1/5.
//  Copyright (c) 2015年 MI-31. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Resized)

/**
 *  根据图片名返回自由拉伸的图片
 *
 *  @param name 需要拉伸的图片名
 *
 *  @return 自由拉伸的图片
 */
+ (UIImage *)resizedImage:(NSString *)name;

@end
