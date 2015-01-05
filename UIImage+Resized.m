//
//  UIImage+Resized.m
//  MiBo
//
//  Created by Miracolo Bosco on 15/1/5.
//  Copyright (c) 2015年 MI-31. All rights reserved.
//

#import "UIImage+Resized.h"

@implementation UIImage (Resized)

+ (UIImage *)resizedImage:(NSString *)name
{
    UIImage *image = [UIImage imageNamed:name];
    return [image stretchableImageWithLeftCapWidth:image.size.width * 0.5 topCapHeight:image.size.height * 0.5];
}

@end
