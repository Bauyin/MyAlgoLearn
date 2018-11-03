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

/*
 创建一个长度为n的单链表
 */
LNode * createSignleList(int n);

/*
 遍历单链表
 */
void printSignleList(LNode *list);

/*
 查找单链表list中的第e个元素
 */
LNode *getSignleListNode(LNode *list, int e);

/*
 在单链表list中的第i个元素之前，插入元素e
 */
LNode *insertNode(LNode *list,int i, int e);

/*
 单链表反转
 */
void signleListReverse(LNode *list);

/*
 删除链表倒数第 n 个结点
 使用快慢指针的思路
 */
void deleteListNode(LNode *list, int n);

@interface LinkedList : NSObject

@end

NS_ASSUME_NONNULL_END
