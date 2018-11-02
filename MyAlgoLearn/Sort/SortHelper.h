//
//  SortHelper.h
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/10/26.
//  Copyright © 2018 koolearn. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SortHelper : NSObject

/*
 生成一个随机的C数组
 n:数组长度
 rangeL:数组的左边界
 rangeR:数组的右边界
 */
int *generateCRandomArray(int n, int rangeL, int rangeR);

/*
 打印一个C数组
 */
void printCArray(int *arr, int n);

/*
 复制一个C数组
 */
int *copyCIntArray(int *arr, int n);

//生成有n个元素的随机数组,每个元素的随机范围为[rangeL, rangeR]
+ (NSMutableArray *)generateRandomArray:(int)size rangeL:(int)rangeL rangeR:(int)rangeR;

+ (void)printArray:(NSArray *)array;

@end

NS_ASSUME_NONNULL_END
