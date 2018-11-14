//
//  BaseViewController.m
//  MyAlgoLearn
//
//  Created by 崔宝印 on 2018/11/13.
//  Copyright © 2018 koolearn. All rights reserved.
//

#import "BaseViewController.h"
#import "UIViewController+KooNavBar.h"
#import "UIViewController+KooCustomNavigationBar.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.kooNavTintColor = [UIColor blueColor];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"全选" style:UIBarButtonItemStylePlain target:self action:@selector(selectAllButtonItemClick)];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
