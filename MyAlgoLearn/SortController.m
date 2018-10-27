//
//  On2SortController.m
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/10/25.
//  Copyright © 2018 koolearn. All rights reserved.
//

#import "SortController.h"
#import "SortHelper.h"

@interface SortController ()

@end

@implementation SortController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)bubbleSort:(id)sender
{
    NSMutableArray *array = [SortHelper generateRandomArray:20 rangeL:0 rangeR:20];
    NSLog(@"%@",array);
    [self bubbleSortArray:array];
    NSLog(@"%@",array);
}

- (IBAction)insertSort:(id)sender
{
    NSMutableArray *array = [SortHelper generateRandomArray:20 rangeL:0 rangeR:20];
    [SortHelper printArray:array];
    [self insertSortArrayB:array];
    [SortHelper printArray:array];
}

- (IBAction)selectionSort:(id)sender
{
}

#pragma mark - 冒泡排序,O(n2),基于比较
- (void)bubbleSortArray:(NSMutableArray *)array
{
    for(int i = 0 ; i < array.count ; i ++)
    {
        BOOL isExchange = NO;
        for (int j = 0; j < array.count - 1 - i; j ++)
        {
            if ([array[j] intValue] > [array[j + 1] intValue])
            {
                [array exchangeObjectAtIndex:j withObjectAtIndex:j+1];
                isExchange = YES;
            }
        }
        if (!isExchange) break;
    }
}

#pragma mark - 插入排序,O(n2),基于比较
/*
 插入排序思想：
 (1).数组分为已排序区间和未排序区间；
 (2).初始已排序区间为第一个元素，未排序区间为之后的所有元素；
 (3).取未排序空间的元素，通过比较，在已排序空间中查找到合适的位置将其插入，并保证已排序空间一直有序；
 (4).重复过程3，直至未排序空间元素为空。
 
 插入排序思考：
 1.插入排序是原地排序吗？
 插入排序算法的运行并不需要额外的存储空间，所以空间复杂度是O(1),是原地排序。
 2.插入排序是稳定排序吗？
 插入排序是稳定的算法，因为我们只有小于要插入的值的时候，才会交换数据；
 相等的值我们直接停止查找 不会交换也不会再进行查找；
 3.插入排序的时间复杂度是多少？
 最好时间复杂度为：O(n),数组正序时,从尾到头遍历已经有序的数据。
 最坏时间复杂度为：O(n2),数组倒序时
 平均时间复杂度为：O(n2)
 4.插入排序有什么优点？
 对于一个近乎有序的数组，使用插入排序移动和交换的次数非常少。
 */

/*
 直接交换
 */
- (void)insertSortArrayA:(NSMutableArray *)array
{
    for (int i = 0; i < array.count - 1; i ++)
    {
        int index = i + 1;
        for (int j = i; j >= 0; j --)
        {
            if ([array[index] intValue] < [array[j] intValue])
            {
                //直接交换
                [array exchangeObjectAtIndex:index withObjectAtIndex:j];
                index = j;
            }
            else//退出查找
            {
                break;
            }
        }
    }
}

/*
 先移动，最后交换
 */
- (void)insertSortArrayB:(NSMutableArray *)array
{
    for (int i = 0; i < array.count - 1; i ++)
    {
        int index = i + 1;
        id indexValue = array[index];
        for (int j = i; j >= 0; j --)
        {
            if ([indexValue intValue] < [array[j] intValue])
            {
                array[index] = array[j];//先往后移动较大值
                index = j;//记录移动后index的位置
            }
            else{
                break;
            }
        }
        array[index] = indexValue;//赋值到指定位置
    }
}

#pragma mark - 选择排序，O(n2),基于比较
- (void)selectSortArray:(NSMutableArray *)array
{
}

#pragma mark - 时间复杂度O(nlogn),基于比较
- (IBAction)quickSort:(id)sender
{
}

#pragma mark - 时间复杂度O(n),非基于比较

@end
