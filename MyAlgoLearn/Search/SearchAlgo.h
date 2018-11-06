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
 二分查找，在长度为n的数组arr中，查找target元素的位置
 */
int binarySearch(int *arr, int n, int target);

@interface SearchAlgo : NSObject

@end

NS_ASSUME_NONNULL_END
