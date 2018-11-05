//
//  LinkedListVC.m
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/11/2.
//  Copyright © 2018 koolearn. All rights reserved.
//

#import "LinkedListVC.h"
#import "LinkedList.h"

@interface LinkedListVC ()

@end

@implementation LinkedListVC

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)printListAction:(id)sender
{
    LNode *list = createSignleList(20);
    printSignleList(list);
}

- (IBAction)insertListAction:(id)sender
{
    LNode *list = createSignleList(5);
    printSignleList(list);
    list = insertNode(list, 1, 9);
    printSignleList(list);
    list = insertNode(list, 6, 11);
    printSignleList(list);
    list = insertNode(list, 3, 12);
    printSignleList(list);
}

- (IBAction)deleteListAction:(id)sender {
    LNode *list = createSignleList(5);
    printSignleList(list);
    list = deleteListNode(list, 5);
    printSignleList(list);
}

- (IBAction)reverseSignleListAction:(id)sender
{
    LNode *list = createSignleList(1);
    printSignleList(list);
    list = signleListReverse(list);
    printSignleList(list);
}
@end
