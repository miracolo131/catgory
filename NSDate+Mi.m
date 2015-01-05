//
//  NSData+Mi.m
//  MiBo
//
//  Created by Miracolo Bosco on 15/1/4.
//  Copyright (c) 2015年 MI-31. All rights reserved.
//  

#import "NSDate+Mi.h"

@implementation NSDate (Mi)

- (BOOL)isToday
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    int uint = NSCalendarUnitDay | NSCalendarUnitMonth | NSCalendarUnitYear;
    
    NSDateComponents *nowComponents = [calendar components:uint fromDate:[NSDate date]];
    
    NSDateComponents *selfComponents = [calendar components:NSCalendarUnitYear fromDate:self];
    return
        (selfComponents.year == nowComponents.year) &&
        (selfComponents.month == nowComponents.month) &&
        (selfComponents.day == nowComponents.day);
    
}

- (BOOL)isYesterday
{
    NSDate *nowDate = [[NSDate date] dateWithYMD];
    NSDate *selfDate = [self dateWithYMD];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *cmps = [calendar components:NSCalendarUnitDay fromDate:selfDate toDate:nowDate options:0];
    return cmps.day == 1;
}

- (BOOL)isThisYear
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    int unit = NSCalendarUnitDay;
    
    NSDateComponents *nowComps = [calendar components:unit fromDate:[NSDate date]];
    NSDateComponents *selfComps = [calendar components:unit fromDate:self];
    
    return nowComps.year == selfComps.year;
}

- (NSDate *)dateWithYMD
{
    NSDateFormatter *fmt =[[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyy-MM-dd";
    NSString *selfStr = [fmt stringFromDate:self];
    return [fmt dateFromString:selfStr];
}

- (NSDateComponents *)dateFromNow
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    int unit = NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    return [calendar components:unit fromDate:self toDate:[NSDate date] options:0];
}
@end
