//
//  LinkedList.h
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/11/1.
//  Copyright © 2018 koolearn. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef struct LNode//单链表节点
{
    int data;
    struct LNode *next;
}LNode;

void createList
@interface LinkedList : NSObject

@end

NS_ASSUME_NONNULL_END
