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
LNode *signleListReverse(LNode *list);

/*
 删除链表倒数第 n 个结点
 使用快慢指针的思路
 */
LNode *deleteListNode(LNode *list, int n);

/*
 查找链表的中间节点
 思路1:从头到尾遍历链表,查找出链表节点个数n;然后再按照n/2遍历;
 思路2:快慢指针法,遍历链表时,快指针每次前进两个,慢指针前进一个;当快指针指向尾部时,慢指针指向中点
 */
LNode *findMidNodeInList(LNode *list);

/*
 合并两个有序的单链表
 思路1:两个指针分别遍历两个链表，比较合并
 */
LNode *mergeTwoSortedList(LNode *listA, LNode *listB);

/*
 合并两个有序的单链表
 思路2:每次递归获取头节点
 */
LNode *mergeTwoSortedListB(LNode *listA, LNode *listB);

@interface LinkedList : NSObject

@end

NS_ASSUME_NONNULL_END
