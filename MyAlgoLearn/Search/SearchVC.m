//
//  SearchVC.m
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/11/6.
//  Copyright © 2018 koolearn. All rights reserved.
//

#import "SearchVC.h"
#import "SearchAlgo.h"
#import "SortHelper.h"
#include "SortAlgoC.h"

@interface SearchVC ()

@end

@implementation SearchVC

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)binarySearchAction:(id)sender
{
    int n = 1;
    int *arr = generateCRandomArray(n, 0, 10);
    printCArray(arr, n);
    quickSort(arr, n);
    printCArray(arr, n);
    
    int index = binarySearch(arr, n, 5);
    NSLog(@"查找结果：%d",index);
}

@end
