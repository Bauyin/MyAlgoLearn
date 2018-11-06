//
//  ListQueue.h
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/11/6.
//  Copyright © 2018 koolearn. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
typedef struct ListQueueNode
{
    int data;
    struct ListQueueNode *next;
}ListQueueNode;

typedef struct ListQueue
{
    int totalSize;
    int usedSize;
    struct ListQueueNode *head;
    struct ListQueueNode *tail;
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

@interface ListQueueObject : NSObject

@end

NS_ASSUME_NONNULL_END
