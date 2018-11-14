//
//  SearchAlgo.h
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/11/5.
//  Copyright © 2018 koolearn. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/*
 二分查找的局限性：
 1.二分查找依赖顺序表结构，即依赖数组，因为需要二分查找需要按下标随机访问元素
 2.二分查找序列必须为有序序列。
 3.数量太小不适合二分查找。
 4.
 */
/*
 二分查找(折半查找)，在长度为n的数组arr中，查找target元素的位置
 */
int binarySearch(int *arr, int n, int target);

@interface SearchAlgo : NSObject

@end

NS_ASSUME_NONNULL_END
