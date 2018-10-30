//
//  SortAlgoC.c
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/10/30.
//  Copyright © 2018 koolearn. All rights reserved.
//

#include "SortAlgoC.h"

void printSortArray(int arr[], int n)
{
    for (int i = 0; i < n; i++)
    {
        printf("%d,", arr[i]);
    }
    printf("\n");
}


#pragma mark - 插入排序,O(n2),基于比较
/*
 插入排序优化
 直接交换
 */
void insertionSort(int arr[], int n)
{
    for (int i = 1; i < n; i ++)//第0个元素看做有序序列
    {
        //查找arr[i]在有序序列中合适的位置
        for(int j = i; j > 0;j --)
        {
            if (arr[j - 1] > arr[j])//交换两个数位置
            {
                int tmp = arr[j];
                arr[j] = arr[j - 1];
                arr[j - 1] = tmp;
            }
            else//退出循环
            {
                break;
            }
        }
    }
}

/*
 插入排序优化
 优化代码比较
 */
void insertionSortOptimizeA(int arr[], int n)
{
    for (int i = 1; i < n; i ++)//第0个元素看做有序序列
    {
        //查找arr[i]在有序序列中合适的位置
        for(int j = i; j >= 1 && arr[j - 1] > arr[j];j --)
        {
            int tmp = arr[j];
            arr[j] = arr[j - 1];
            arr[j - 1] = tmp;
        }
    }
}

/*
 插入排序优化
 只移动，最后交换
 */
void insertionSortOptimizeB(int arr[], int n)
{
    for (int i = 1; i < n; i ++)//第0个元素看做有序序列
    {
        //查找arr[i]在有序序列中合适的位置
        int keyValue = arr[i];//保存key的值
        int key;//保存key要插入的位置
        for(key = i; key >= 1 && arr[key - 1] > keyValue; key --)
        {
            arr[key] = arr[key - 1];
        }
        arr[key] = keyValue;
    }
}

#pragma mark - 选择排序
void selectionSort(int arr[], int n)
{
    for (int i = 0; i < n; i++)//
    {
        int min = i;//min指向每趟要查找的最小值
        for (int j = i + 1 ; j < n; j ++)//从i一直向后便利查找最小值
        {
            if (arr[j] < arr[min])
            {
                min = j;
            }
        }
        int tmp = arr[i];
        arr[i] = arr[min];
        arr[min] = tmp;
    }
}

#pragma mark - 冒泡排序
void bubbleSort(int arr[], int n)
{
    for (int i = 0; i < n; i ++)
    {
        for (int j = 0; j < n - 1 - i; j ++)
        {
            if (arr[j] > arr[j + 1])
            {
                int tmp = arr[j + 1];
                arr[j + 1] = arr[j];
                arr[j] = tmp;
            }
        }
    }
}

#pragma mark - 希尔排序
void shellSort(int arr[], int n)
{
    int div = n / 2;
    for (; div >= 1; div = div/2)
    {
        for (int i = 0; i < div; i ++)//遍历每个分区，对每个分区进行插入排序
        {
            //分区中第一个元素视为有序区间
            //从第二个元素(i+div)开始,依次和前面的有序序列比较，查找其应该插入的位置
            for (int j = i + div; j < n; j += div)//第一个元素i算有序区间，从第2个元素i+div开始查找其应该插入的位置
            {
                int keyValue = arr[j];
                int key;
                for (key = j; key >= div && arr[key - div] > keyValue; key -= div)
                {
                    arr[key] = arr[key - div];
                }
                arr[key] = keyValue;
            }
            printSortArray(arr, n);
        }
    }
}

#pragma mark - 归并排序
void mergeSort(int arr, int n)
{
    
}

#pragma mark - 快速排序
void quickSort(int arr, int n)
{
    
}
