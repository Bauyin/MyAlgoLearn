//
//  SortAlgoC.c
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/10/30.
//  Copyright © 2018 koolearn. All rights reserved.
//

#include "SortAlgoC.h"
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>

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
/*
 挖坑法
 初始值取第一个元素,初始坑位在左侧，从右侧查找小于Key的值，填在坑位
 */
int quickSortPartitionA(int arr[], int left, int right)
{
    int keyValue = arr[left];
    int _left = left;
    int _right = right;
    while (_left < _right)
    {
        while (_left < _right && arr[_right] >= keyValue)
        {
            _right --;
        }
        arr[_left] = arr[_right];
        
        while (_left < _right && arr[_left] <= keyValue)
        {
            _left ++;
        }
        
        arr[_right] = arr[_left];
    }
    arr[_left] = keyValue;
    return _left;
}

/*
 挖坑法
 初始值取最后一个元素,初始坑位在右侧，从左侧查找大于Key的值，填在坑位
 */
int quickSortPartitionB(int arr[], int left, int right)
{
    int keyValue = arr[right];
    int _left = left;
    int _right = right;
    while (_left < _right)
    {
        while (_left < _right && arr[_left] <= keyValue)
        {
            _left ++;
        }
        arr[_right] = arr[_left];
        while (_left < _right && arr[_right] >= keyValue)
        {
            _right --;
        }
        arr[_left] = arr[_right];
    }
    arr[_right] = keyValue;
    return _right;
}

void _quickSort(int arr[], int left, int right)
{
    if (left >= right)
    {
        return;
    }
    int partition = quickSortPartitionB(arr, left, right);
    _quickSort(arr, left, partition - 1);
    _quickSort(arr, partition + 1, right);
}

void quickSort(int arr[], int n)
{
    _quickSort(arr,0, n-1);
}

#pragma mark - 思考题：两个数组求交集
int * intersectionOfTwoArray(int arrA[],int aSize, int arrB[],int bSize)
{
    int *arr = (int *)malloc(sizeof(int) * (aSize+bSize));
    int index = 0;
    for (int i = 0; i < aSize; i ++)
    {
        for (int j = 0; j < bSize; j ++)
        {
            if (arrA[i] == arrB[j])
            {
                arr[index] = arrA[i];
                index ++;
                break;
            }
        }
    }
    printSortArray(arr, index);
    return arr;
}

int* intersection(int* nums1, int nums1Size, int* nums2, int nums2Size, int* returnSize)
{
    int *arr = (int *)malloc(sizeof(int) * (nums1Size+nums2Size));
    int index = 0;
    for (int i = 0; i < nums1Size; i ++)
    {
        for (int j = 0; j < nums2Size; j ++)
        {
            if (nums1[i] == nums2[j])
            {
                arr[index] = nums1[i];
                index ++;
                break;
            }
        }
    }
    returnSize = &index;
    printSortArray(arr, index);
    return arr;
}
#pragma mark - 数组去重
/*
 数组去重，思路1
 定义一个新数组，遍历老数组中的元素，和新数组中的元素依次比较，若都不相同放入新数组，否则不处理
 */
int *distinctArray(int arr[], int n)
{
    int *newArr = (int *)malloc(sizeof(int) * n);
    int newArrSize = 0;//新数组中元素的个数
    for (int i = 0; i < n; i ++)
    {
        int keyValue = arr[i];
        int j = newArrSize - 1;//新数组中最后一个元素
        while (j >= 0 && newArr[j] != keyValue)
        {
            j --;
        }
        if (j < 0)
        {
            newArr[newArrSize] = keyValue;
            newArrSize ++;
            printSortArray(newArr, newArrSize);
        }
    }
    return newArr;
}

/*
 如果知道arr中整数的最大值，生成一个临时数组，使用原有数组中的值，作为临时数组的下标，如果临时数组的下标对应值为1，表示此值重复
 */
int *distinctArrayB(int arr[], int n)
{
    int *tempArr = malloc(sizeof(int) * n * n);
    memset(tempArr,0,n * n);
    
    int *newArr = malloc(sizeof(int) * n);
    int newArrSize = 0;
    memset(newArr,0,n);

    for (int i = 0; i < n; i ++)
    {
        int tag = arr[i];
        int tagValue = tempArr[tag];
        if (!tagValue)
        {
            tempArr[tag] = 1;
            newArr[newArrSize] = tag;
            newArrSize ++;
            printSortArray(newArr, newArrSize);
        }
    }
    return newArr;
}
