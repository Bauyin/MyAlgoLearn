//
//  QueueVC.m
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/11/5.
//  Copyright © 2018 koolearn. All rights reserved.
//

#import "QueueVC.h"
#import "Queue.h"

@interface QueueVC ()

@end

@implementation QueueVC

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)enQueueAction:(id)sender
{
    ArrayQueue *queue = createArrayQueue(5);
    printArrayQueue(queue);
    enArrayQueue(queue, 5);
    printArrayQueue(queue);
    enArrayQueue(queue, 7);
    printArrayQueue(queue);
    enArrayQueue(queue, 8);
    printArrayQueue(queue);
    enArrayQueue(queue, 9);
    printArrayQueue(queue);
    enArrayQueue(queue, 10);
    printArrayQueue(queue);
    enArrayQueue(queue, 11);
    printArrayQueue(queue);
    enArrayQueue(queue, 12);
    printArrayQueue(queue);
    enArrayQueue(queue, 13);
    printArrayQueue(queue);
    enArrayQueue(queue, 14);
    printArrayQueue(queue);
}
- (IBAction)deQueueAction:(id)sender
{
    ArrayQueue *queue = createArrayQueue(7);
    enArrayQueue(queue, 5);
    enArrayQueue(queue, 6);
    enArrayQueue(queue, 7);
    enArrayQueue(queue, 8);
    enArrayQueue(queue, 9);
    enArrayQueue(queue, 14);
    enArrayQueue(queue, 13);
    printArrayQueue(queue);

    NSLog(@"7出队列");
    deArrayQueue(queue, 13);
    printArrayQueue(queue);
}


@end
