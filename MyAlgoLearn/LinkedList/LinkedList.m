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
}

@end
