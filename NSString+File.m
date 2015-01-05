//
//  NSString+File.m
//  MiBo
//
//  Created by Miracolo Bosco on 15/1/5.
//  Copyright (c) 2015年 MI-31. All rights reserved.
//

#import "NSString+File.h"

@implementation NSString (File)

- (long long)fileSize
{
    NSFileManager *manager = [NSFileManager defaultManager];
    
    BOOL isDirectory = NO;
    BOOL isFileExists = [manager fileExistsAtPath:self isDirectory:&isDirectory];
    
    if (isDirectory == NO) {
        return 0;
    }
    
    if (isDirectory) {
        NSArray *subPahts = [manager contentsOfDirectoryAtPath:self error:nil];
        long long totalSize = 0;
        for (NSString *subPath in subPahts) {
            NSString *fullSubPath = [self stringByAppendingPathComponent:subPath];
            totalSize += [fullSubPath fileSize];
        }
        
        return totalSize;
    } else{
        NSDictionary *attributes = [manager attributesOfItemAtPath:self error:nil];
        return [attributes [NSFileSize] longLongValue];
    }
}

@end
