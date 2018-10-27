//
//  SortHelper.m
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/10/26.
//  Copyright © 2018 koolearn. All rights reserved.
//

#import "SortHelper.h"

@implementation SortHelper

+ (NSMutableArray *)generateRandomArray:(int)size rangeL:(int)rangeL rangeR:(int)rangeR
{
    NSMutableArray *array = [NSMutableArray array];
    for (int i = 0; i < size; i++)
    {
        int temp = rand() % (rangeR - rangeL + 1) + rangeL;
        [array addObject:@(temp)];
    }
    return array;
}

+ (void)printArray:(NSArray *)array
{
    NSMutableString *str = [[NSMutableString alloc] initWithString:@"数组："];
    for (id obj in array)
    {
        [str appendFormat:@"%@,",obj];
    }
    NSLog(@"%@",str);
}

@end
