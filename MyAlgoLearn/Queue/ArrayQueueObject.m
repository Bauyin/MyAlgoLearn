//
//  ArrayQueue.m
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/11/6.
//  Copyright © 2018 koolearn. All rights reserved.
//

#import "ArrayQueueObject.h"

@implementation ArrayQueueObject

/*
 创建大小为n的队列
 */
ArrayQueue *createArrayQueue(int n)
{
    ArrayQueue *queue = malloc(sizeof(queue));
    queue->items = malloc(sizeof(int)*n);
    queue->size = n;
    queue->head = 0;
    queue->tail = 0;
    return queue;
}
/*
 入队
 */
void enArrayQueue(ArrayQueue *queue, int item)
{
    if (queue->tail >= queue->size)//队列已满
    {
        int i = 0;
        for (; i < queue->size - 1; i ++)
        {
            queue->items[i] = queue->items[i+1];
        }
        queue->items[i] = item;
    }
    else
    {
        int i = queue->tail;
        queue->items[i] = item;
        queue->tail = i + 1;
    }
}

/*
 出队
 */
void deArrayQueue(ArrayQueue *queue, int item)
{
    int itemIndex = -1;
    for (int i = 0; i < queue->tail ; i ++)
    {
        if (queue->items[i] == item)
        {
            itemIndex = i;
        }
    }
    if (itemIndex == -1)//没有元素
    {
        
    }
    else
    {
        int i = 0;
        itemIndex ++;
        while (itemIndex < queue->tail)
        {
            queue->items[i] = queue->items[itemIndex];
            i ++;
            itemIndex ++;
        }
        queue->tail = i;
    }
}

void printArrayQueue(ArrayQueue *queue)
{
    for (int i = 0; i < queue->tail; i ++)
    {
        printf("%d,",queue->items[i]);
    }
    printf("\n");
}
@end
