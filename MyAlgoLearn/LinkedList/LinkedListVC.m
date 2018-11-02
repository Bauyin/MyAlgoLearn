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
@end
