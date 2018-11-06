//
//  SearchAlgo.m
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/11/5.
//  Copyright © 2018 koolearn. All rights reserved.
//

#import "SearchAlgo.h"

@implementation SearchAlgo
int binarySearch(int *arr, int n, int target)
{
    return _binarySearchB(arr, 0, n-1, target);
}

/*
 二分查找 递归 实现
 */
int _binarySearch(int *arr, int left, int right, int target)
{
    if (left > right)
    {
        return -1;
    }
    int midIndex = left + (right - left)/2;
    int midValue = arr[midIndex];
    if(midValue < target)
    {
        return _binarySearch(arr, midIndex + 1, right , target);
    }
    else if(midValue > target)
    {
        return _binarySearch(arr, left, midIndex - 1, target);
    }
    else
    {
        return midIndex;
    }
}

/*
 二分查找 非递归 实现
 */
int _binarySearchB(int *arr, int left, int right, int target)
{
    int i = left;
    int j = right;
    while (i <= j)
    {
        int midIndex = i + (j - i)/2;
        int midValue = arr[midIndex];
        if(midValue < target)
        {
            i = midIndex + 1;
        }
        else if(midValue > target)
        {
            j = midIndex - 1;
        }
        else
        {
            return midIndex;
        }
    }
    return -1;
}

@end
