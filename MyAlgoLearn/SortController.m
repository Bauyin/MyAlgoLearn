//
//  On2SortController.m
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/10/25.
//  Copyright © 2018 koolearn. All rights reserved.
//

#import "SortController.h"

@interface SortController ()

@end

@implementation SortController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)bubbleSort:(id)sender
{
    NSMutableArray *array = [NSMutableArray arrayWithObjects:@3,@8,@10,@22,@12,@5,@22,nil];
    [self bubbleSortArray:array];
    NSLog(@"%@",array);
}

- (IBAction)insertSort:(id)sender
{
}

- (IBAction)selectionSort:(id)sender
{
}

#pragma mark - 时间复杂度O(n2),基于比较
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
        NSLog(@"%@",array);
        if (!isExchange) break;
    }
}

- (void)insertSortArray:(NSMutableArray *)array
{
}


- (void)selectSortArray:(NSMutableArray *)array
{
}

#pragma mark - 时间复杂度O(nlogn),基于比较
- (IBAction)quickSort:(id)sender
{
}

#pragma mark - 时间复杂度O(n),非基于比较

@end
