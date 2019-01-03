//
//  ShuatiController.m
//  MyAlgoLearn
//
//  Created by cuibaoyin on 2019/1/3.
//  Copyright © 2019 koolearn. All rights reserved.
//

#import "ShuatiController.h"
#include "JewelAndStone.h"

@interface ShuatiController ()

@end

@implementation ShuatiController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)testAction:(id)sender
{
    char *J = "a";
    char *S = "AAbbbbAAAA";
    NSLog(@"numJewelsInStones:%d",numJewelsInStones(J, S));
}


@end
