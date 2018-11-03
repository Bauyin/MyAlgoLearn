//
//  LinkedList.m
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/11/1.
//  Copyright © 2018 koolearn. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList
- (instancetype)init
{
    if (self = [super init])
    {
        LNode *node = node;
    }
    return self;
}

LNode *createSignleList(int n)
{
    LNode *head = malloc(sizeof(LNode));
    head->data = 0;
    head->next = NULL;
    
    LNode *iNode = head;
    int i = 1;
    while (i < n)
    {
        LNode *node = malloc(sizeof(LNode));
        node -> data = i;
        node -> next = NULL;
        
        iNode->next = node;
        iNode = node;
        i ++;
    }
    return head;
}

void printSignleList(LNode *list)
{
    LNode *tmpNode = list;
    while (1)
    {
        printf("%d,",tmpNode -> data);
        if (tmpNode -> next == NULL)
        {
            break;
        }
        else
        {
            tmpNode = tmpNode -> next;
        }
    }
    printf("\n");
}

void signleListReverse(LNode *list)
{
    
}

LNode *getSignleListNode(LNode *list, int e)
{
    return NULL;
}

/*
 在单链表list中的第i个元素之前，插入元素e
 */
LNode * insertNode(LNode *list,int i, int e)
{
    if (i == 1)//在头部之前插入，更换头部
    {
        LNode *eNode = malloc(sizeof(LNode));
        eNode->data = e;
        eNode->next = list;
        return eNode;
    }
    
    int j = 0;
    LNode *iNode = list;
    while (1)//i元素之前插入，需要在第i-1个元素之后插入
    {
        if (j + 1 == i - 1)
        {
            LNode *eNode = malloc(sizeof(LNode));
            eNode->next = iNode->next;
            eNode->data = e;
            iNode->next = eNode;
            return list;
        }
        iNode = iNode->next;
        j ++;
    }
    
}

void deleteListNode(LNode *list, int n)
{
    
}

@end
