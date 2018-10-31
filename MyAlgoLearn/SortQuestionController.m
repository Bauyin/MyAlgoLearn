//
//  SortQuestionController.m
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/10/31.
//  Copyright © 2018 koolearn. All rights reserved.
//

#import "SortQuestionController.h"
#import "SortAlgoC.h"
#import "SortHelper.h"

@interface SortQuestionController ()

@end

@implementation SortQuestionController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)arrayInterSection:(id)sender
{
    int arrA[4] = {1,2,2,1};
    int arrB[2] = {2,2};
    int *returnSize;
    int *arr = intersection(arrA, 4, arrB, 2,returnSize);
    
}

- (IBAction)arrayDistinct:(id)sender
{
    int arr[8] = {6,8,5,1,0,3,2,1};
    printCArray(arr, 8);
    int *newArr = distinctArrayB(arr, 8);
}

@end
