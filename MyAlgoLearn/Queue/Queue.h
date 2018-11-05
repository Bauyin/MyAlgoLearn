//
//  Queue.h
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/11/5.
//  Copyright © 2018 koolearn. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct ArrayQueue
{
    int *items;//数组，存储队列成员
    int size;//队列大小
    int head;//头成员下标
    int tail;//尾成员下标，下次入队的成员应在的位置
}ArrayQueue;//使用数组实现的队列，顺序队列

/*
 创建大小为n的队列
 */
ArrayQueue *createArrayQueue(int n);
/*
 入队
 */
void enArrayQueue(ArrayQueue *queue, int item);

/*
 出队
 */
void deArrayQueue(ArrayQueue *queue, int item);

void printArrayQueue(ArrayQueue *queue);

typedef struct ListQueue
{
    
}ListQueue;//使用链表实现的队列，链式队列

/*
 创建大小为n的队列
 */
ListQueue *createListQueue(int n);

/*
 入队
 */
void enListQueue(ListQueue *queue, int item);
/*
 出队
 */
void deListQueue(ListQueue *queue, int item);

NS_ASSUME_NONNULL_BEGIN

@interface Queue : NSObject

@end

NS_ASSUME_NONNULL_END
