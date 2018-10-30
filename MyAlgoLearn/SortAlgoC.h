//
//  SortAlgoC.h
//  MyAlgoLearn
//  使用C语言实现一些排序算法
//
//  Created by 崔宝印 on 2018/10/30.
//  Copyright © 2018 koolearn. All rights reserved.
//

#ifndef SortAlgoC_h
#define SortAlgoC_h

#include <stdio.h>

/*
 插入排序
 */
void insertionSort(int arr[], int n);
/*
 插入排序优化
 */
void insertionSortOptimizeA(int arr[], int n);
/*
 插入排序优化
 */
void insertionSortOptimizeB(int arr[], int n);

/*
 选择排序
 */
void selectionSort(int arr[], int n);

/*
 冒泡排序
 */
void bubbleSort(int arr[], int n);

/*
 希尔排序
 */
void shellSort(int arr[], int n);

#endif /* SortAlgoC_h */
