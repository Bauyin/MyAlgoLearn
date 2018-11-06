//
//  ArrayQueue.h
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/11/6.
//  Copyright © 2018 koolearn. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


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


@interface ArrayQueueObject : NSObject

@end

NS_ASSUME_NONNULL_END
