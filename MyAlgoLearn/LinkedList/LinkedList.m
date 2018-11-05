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

LNode *signleListReverse(LNode *list)
{
    LNode *next = list->next;
    list->next = NULL;//头节点变为尾节点
    while (next != NULL)
    {
        LNode *tmp = next -> next;
        next->next = list;
        list = next;
        next = tmp;
    }
    return list;
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

LNode * deleteListNode(LNode *list, int n)
{
    LNode *p = list;
    while (n > 0)
    {
        n --;
        p = p->next;
    }
    if(p == NULL)//要删除的是头节点
    {
        list = list->next;
        return list;
    }
    else
    {
        LNode *slowP = list;
        while (p->next != NULL)
        {
            p = p->next;
            slowP = slowP->next;
        }
        slowP->next = slowP->next->next;
        return slowP;
    }
}

LNode *findMidNodeInList(LNode *list)
{
    LNode *slow = list;
    if (slow->next == NULL || slow->next->next == NULL)
    {
        return slow;
    }

    LNode *fast = slow->next->next;
    while (fast -> next != NULL && fast->next->next != NULL)
    {
        slow = slow->next;
        fast = fast->next->next;
    }
    return slow->next;
}

LNode *mergeTwoSortedList(LNode *listA, LNode *listB)
{
    LNode *pA = listA;
    LNode *pB = listB;
    LNode *p = NULL;
    if (pA->data < pB->data)//设置当前节点和头节点
    {
        p = pA;
        pA = pA->next;
    }
    else
    {
        p = pB;
        pB = pB->next;
    }
    LNode *head = p;
    
    while (pA != NULL && pB != NULL)
    {
        if (pA->data < pB->data)
        {
            p -> next = pA;
            p = pA;
            pA = pA->next;
        }
        else
        {
            p -> next = pB;
            p = pB;
            pB = pB->next;
        }
    }
    if (pA == NULL)
    {
        p->next = pB;
    }
    else if (pB == NULL)
    {
        p->next = pA;
    }
    return head;
}

LNode *mergeTwoSortedListB(LNode *listA, LNode *listB)
{
    if (listA == NULL)
    {
        return listB;
    }
    if (listB == NULL)
    {
        return listA;
    }
    
    LNode *newListHead = NULL;
    if (listA->data < listB->data)//设置当前节点和头节点
    {
        newListHead = listA;
        newListHead->next = mergeTwoSortedListB(listA->next, listB);
    }
    else
    {
        newListHead = listB;
        newListHead->next = mergeTwoSortedListB(listA, listB->next);;
    }
    return newListHead;
}

int cachedListSize = 10;
LNode *cachedListHead = NULL;
LNode *lruAlgo(int target)
{
    if (cachedListHead == NULL)//构造缓存链表
    {
        LNode *p = NULL;
        for (int i = 0; i < cachedListSize; i++)
        {
            LNode *tmp = malloc(sizeof(LNode));
            tmp->data = i;
            tmp->next = NULL;
            if (p == NULL)
            {
                p = tmp;
                cachedListHead = tmp;
            }
            else
            {
                p->next = tmp;
                p = tmp;
            }
        }
    }
    NSLog(@"查找目标之前");
    printSignleList(cachedListHead);
    
    LNode *targetNode = cachedListHead;
    LNode *preTargetNode = NULL;
    while (targetNode != NULL)
    {
        if (targetNode->data != target)
        {
            preTargetNode = targetNode;
            targetNode = targetNode->next;
        }
        else
            break;
    }
    
    if (targetNode == NULL)//缓存中没有此节点
    {
        //删除尾部节点
        deleteListNode(cachedListHead, 1);

        //将此节点设置为新的头节点
        LNode *node = malloc(sizeof(LNode));
        node->data = target;
        node->next = cachedListHead;
        cachedListHead = node;
    }
    else if (preTargetNode != NULL)//缓存中有此节点,并且不是头节点,将此节点设置为头节点
    {
        preTargetNode->next = targetNode->next;
        targetNode->next = cachedListHead;
        cachedListHead = targetNode;
    }
    
    NSLog(@"查找目标之后");
    printSignleList(cachedListHead);
    return cachedListHead;
}
@end
