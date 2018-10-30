//
//  On2SortController.m
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/10/25.
//  Copyright © 2018 koolearn. All rights reserved.
//

#import "SortController.h"
#import "SortHelper.h"
#import "SortAlgoC.h"

@interface SortController ()

@end

@implementation SortController

- (void)viewDidLoad
{
    [super viewDidLoad];
    


}

- (IBAction)testSort:(id)sender
{
    NSMutableArray *arrayA = [SortHelper generateRandomArray:10000 rangeL:0 rangeR:5000];
    NSMutableArray *arrayB = [arrayA mutableCopy];
    NSMutableArray *arrayC = [arrayA mutableCopy];
    NSMutableArray *arrayD = [arrayA mutableCopy];

    NSTimeInterval interval1 = [[NSDate date] timeIntervalSince1970];
    NSLog(@"选择排序start");
    [self selectSortArray:arrayA];
    NSTimeInterval interval2 = [[NSDate date] timeIntervalSince1970];
    NSLog(@"选择排序end--%f",interval2 - interval1);

    interval1 = [[NSDate date] timeIntervalSince1970];
    NSLog(@"冒泡排序start");
    [self bubbleSortArrayA:arrayB];
    interval2 = [[NSDate date] timeIntervalSince1970];
    NSLog(@"冒泡排序end--%f",interval2 - interval1);
    
    interval1 = [[NSDate date] timeIntervalSince1970];
    NSLog(@"插入排序start");
    [self insertSortArrayB:arrayC];
    interval2 = [[NSDate date] timeIntervalSince1970];
    NSLog(@"插入排序end--%f",interval2 - interval1);
    
    interval1 = [[NSDate date] timeIntervalSince1970];
    NSLog(@"快速排序start");
    [self quickSortArray:arrayD start:0 end:(int)arrayD.count - 1];
    interval2 = [[NSDate date] timeIntervalSince1970];
    NSLog(@"快速排序end--%f",interval2 - interval1);
    [SortHelper printArray:arrayD];
}

- (IBAction)bubbleSort:(id)sender
{
    int arraySize = 20;
    int arrayLeft = 0;
    int arrayRight = 20;
    int *arr = generateCRandomArray(arraySize, arrayLeft, arrayRight);
    printCArray(arr, arraySize);
    bubbleSort(arr, arraySize);
    printCArray(arr, arraySize);
    
//    NSMutableArray *array = [SortHelper generateRandomArray:20 rangeL:0 rangeR:20];
//    NSLog(@"%@",array);
//    [self bubbleSortArrayA:array];
//    NSLog(@"%@",array);
}

- (IBAction)insertSort:(id)sender
{
    int arraySize = 20;
    int arrayLeft = 0;
    int arrayRight = 20;
//    NSMutableArray *array = [SortHelper generateRandomArray:arraySize rangeL:arrayLeft rangeR:arrayRight];
//    [SortHelper printArray:array];
//    [self insertSortArrayB:array];
//    [SortHelper printArray:array];
    
    int *arr = generateCRandomArray(arraySize, arrayLeft, arrayRight);
    printCArray(arr, arraySize);
    insertionSortOptimizeB(arr, arraySize);
    printCArray(arr, arraySize);
}

- (IBAction)selectionSort:(id)sender
{
    int arraySize = 20;
    int arrayLeft = 0;
    int arrayRight = 20;
    int *arr = generateCRandomArray(arraySize, arrayLeft, arrayRight);
    printCArray(arr, arraySize);
    selectionSort(arr, arraySize);
    printCArray(arr, arraySize);
//    NSMutableArray *array = [SortHelper generateRandomArray:20 rangeL:0 rangeR:20];
//    [SortHelper printArray:array];
//    [self selectSortArray:array];
//    [SortHelper printArray:array];
}

- (IBAction)quickSort:(id)sender
{
    NSMutableArray *array = [SortHelper generateRandomArray:6 rangeL:0 rangeR:20];
    [SortHelper printArray:array];
    [self quickSortArray:array start:0 end:(int)array.count - 1];
    [SortHelper printArray:array];
}

- (IBAction)shellSort:(id)sender
{
//    NSMutableArray *array = [SortHelper generateRandomArray:6 rangeL:0 rangeR:20];
//    [SortHelper printArray:array];
//    [self shellSortArray:array];;
//    [SortHelper printArray:array];
    
    int arraySize = 6;
    int arrayLeft = 0;
    int arrayRight = 20;
    int *arr = generateCRandomArray(arraySize, arrayLeft, arrayRight);
    printCArray(arr, arraySize);
    shellSort(arr, arraySize);
    printCArray(arr, arraySize);
}

#pragma mark - 冒泡排序,O(n2),基于比较
/*
 冒泡排序的思想：
 (1).冒泡排序只会操作相邻的两个元素；
 (2).每次冒泡比较相邻的两个元素，不符合要求的交换这里元素。
 (3).一次冒泡会让一个元素移动的他应该在的位置。
 (4).重复n次冒泡，就完成了n个数据的排序。
 */

/*
 大泡下沉
 */
- (void)bubbleSortArrayA:(NSMutableArray *)array
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
 先移动，最后插入
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

#pragma mark - 希尔排序,O(n2),基于比较
- (void)shellSortArray:(NSMutableArray *)array
{
    int div = (int)array.count / 2;
    while (div >= 1)
    {
        for (int i = 0 ; i < div; i ++)//分为div个组，便利每个组，进行插入排序
        {
            for (int j = i; j < array.count - div; j += div)//对分组进行插入排序
            {
                int index = j + div;
                int indexValue = [array[index] intValue];
                for (int k = j; j >= 0; j-=div)
                {
                    if ([array[k] intValue] > indexValue)
                    {
                        array[index] = array[k];
                        index = k;
                    }
                    else
                    {
                        break;
                    }
                }
                array[index] = @(indexValue);
                [SortHelper printArray:array];
            }
            [SortHelper printArray:array];
        }
        div = div / 2;
    }

}
#pragma mark - 选择排序,O(n2),基于比较
/*
 选择排序思想：
 (1).数组分为已排序区间和未排序区间；
 (2).初始已排序区间为0个元素，未排序区间为所有元素；
 (3).查找出未排序空间中的所有元素中的最小元素，将其放入已排序空间的尾部；
 (4).重复过程3，直至未排序空间元素为空。
 
 选择排序思考：
 1.选择排序是原地排序吗？
 选择排序算法的运行并不需要额外的存储空间，所以空间复杂度是O(1),是原地排序。
 
 2.选择排序是稳定排序吗？
 选择排序是不稳定的算法，选择排序每次都要查找出剩余未排序元素的最小值，
 并和前面的元素交换，这样破坏了稳定性。所以就不稳定了。正是因此，相对于冒泡排序和插入排序，
 选择排序就稍微逊色了。

 3.选择排序的时间复杂度是多少？
 最好时间复杂度为：O(n2)
 最坏时间复杂度为：O(n2)
 平均时间复杂度为：O(n2)
 */
- (void)selectSortArray:(NSMutableArray *)array
{
    for (int i = 0; i < array.count - 1; i ++)
    {
        int minIndex = i;
        for (int j = i + 1; j < array.count; j ++)
        {
            if ([array[j] intValue] < [array[minIndex] intValue])
            {
                minIndex = j;
            }
        }
        if (minIndex != i)
        {
            [array exchangeObjectAtIndex:minIndex withObjectAtIndex:i];
        }
    }
}

#pragma mark - 归并排序,O(nlogn),基于比较
/*
 归并排序思想：
 首先把数组从中间拆分成两部分，然后对前后两部分分别排序，再将排好序的两部分合并在一起，这样整个数组就都有序了。
 */
- (void)mergeSortArray:(NSMutableArray *)array
{
    
}

#pragma mark - 快速排序,O(nlogn),基于比较
/*
 快速排序思想：
 (1).要排序一组数组下标从p到r的数据，我们选择p到r之间的任意一个数据作为pivot分区点
 (2).便利p到r之间的数据，将小于pivot的节点放在左边，将大于pivot的节点放在右边，将pivot节点放在中间，此时数组就被分为(p,pivot-1),pivot,(pivot+1,r)三个部分。
 (3).使用递归排序步骤2中生成的新数组，直到区间缩为1.
 */
/*
 原地算法，非稳定算法
 */
- (void)quickSortArray:(NSMutableArray *)array start:(int)start end:(int)end
{
    if (start >= end)
    {
        return;
    }
    int partitionIndex = [self partitionArrayB:array start:start end:end];
    [self quickSortArray:array start:start end:partitionIndex - 1];
    [self quickSortArray:array start:partitionIndex + 1 end:end];
}

/*
 查找分区节点
 左右指针法
 */
- (int)partitionArray:(NSMutableArray *)array start:(int)start end:(int)end
{
    int key = end;
    int i = start;
    int j = end;
    while (i < j)
    {
        while (i < j && [array[i] intValue] <= [array[key] intValue])
        {
            i ++;
        }
        while (j > i && [array[j] intValue] >= [array[key] intValue])
        {
            j --;
        }
        [array exchangeObjectAtIndex:i withObjectAtIndex:j];
    }
    [array exchangeObjectAtIndex:i withObjectAtIndex:key];
    return i;
}

/*
 查找分区节点
 挖坑法
 */
- (int)partitionArrayB:(NSMutableArray *)array start:(int)start end:(int)end
{
    int keyValue = [array[end] intValue];
    int i = start;
    int j = end;
    while (i < j)
    {
        while (i < j && [array[i] intValue] <= keyValue)
        {
            i ++;
        }
        array[j] = array[i];
        
        while (j > i && [array[j] intValue] >= keyValue)
        {
            j --;
        }
        array[i] = array[j];
    }
    array[i] = @(keyValue);
    return i;
}

/*
 思考题：
 现在你有 10 个接口访问日志文件，每个日志文件大小约 300MB，每个文件里的日志都是按照时间戳从小到大排序的。你希望将这 10 个较小的日志文件，合并为 1 个日志文件，合并之后的日志仍然按照时间戳从小到大排列。如果处理上述排序任务的机器内存只有 1GB，你有什么好的解决思路，能“快速”地将这 10 个日志文件合并吗？
 答：
 
 思考题：
 如何用快排思想在O(n)内查找第K大元素？
 */

#pragma mark - 桶排序，O(n),非基于比较
/*
 思考题：如何根据年龄给 100 万用户排序？
 
 思考题：假设我们有 10 万个手机号码，希望将这 10 万个手机号码从小到大排序，你有什么比较快速的排序方法呢？
 */

#pragma mark - 桶排序，O(n),非基于比较

@end
