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

- (IBAction)findListMiddleAction:(id)sender
{
    LNode *list1 = createSignleList(1);
    printSignleList(list1);
    LNode *middle = findMidNodeInList(list1);
    NSLog(@"1--%d",middle->data);
    
    LNode *list2 = createSignleList(2);
    printSignleList(list2);
    middle = findMidNodeInList(list2);
    NSLog(@"2--%d",middle->data);
    
    LNode *list3 = createSignleList(3);
    printSignleList(list3);
    middle = findMidNodeInList(list3);
    NSLog(@"3--%d",middle->data);
    
    LNode *list4 = createSignleList(4);
    printSignleList(list4);
    middle = findMidNodeInList(list4);
    NSLog(@"4--%d",middle->data);
    
    LNode *list5 = createSignleList(5);
    printSignleList(list5);
    middle = findMidNodeInList(list5);
    NSLog(@"5--%d",middle->data);
    
    LNode *list6 = createSignleList(6);
    printSignleList(list6);
    middle = findMidNodeInList(list6);
    NSLog(@"6--%d",middle->data);
    
    LNode *list7 = createSignleList(7);
    printSignleList(list7);
    middle = findMidNodeInList(list7);
    NSLog(@"7--%d",middle->data);
}

- (IBAction)mergeListAction:(id)sender
{
    LNode *listA = createSignleList(3);
    printSignleList(listA);

    LNode *listB = createSignleList(6);
    printSignleList(listB);

    LNode *list = mergeTwoSortedListB(listA, listB);
    printSignleList(list);
}

- (IBAction)lruAction:(id)sender
{
    NSLog(@"查找11");
    lruAlgo(11);
    
    NSLog(@"查找5");
    lruAlgo(5);
    
    NSLog(@"查找6");
    lruAlgo(6);
    
    NSLog(@"查找33");
    lruAlgo(33);
    
    NSLog(@"查找0");
    lruAlgo(0);
}
@end
