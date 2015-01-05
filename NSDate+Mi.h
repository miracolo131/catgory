//
//  NSData+Mi.h
//  MiBo
//
//  Created by Miracolo Bosco on 15/1/4.
//  Copyright (c) 2015年 MI-31. All rights reserved.
//  时间换算

#import <Foundation/Foundation.h>

@interface NSDate (Mi)

- (BOOL)isToday;
- (BOOL)isYesterday;
- (BOOL)isThisYear;

/**
 *  返回格式为年月日的时间
 */
- (NSDate *)dateWithYMD;

/**
 *  获得与当前时间的时间差
 */
- (NSDateComponents *)dateFromNow;

@end
