//
//  UINavigationController+KooAlpha.h
//  TestNav
//
//  Created by 崔宝印 on 2018/2/28.
//  Copyright © 2018年 Koolearn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (KooNavAlpha)<UINavigationBarDelegate,UINavigationControllerDelegate>
// 设置导航栏透明度
- (void)setNavigationBarAlpha:(CGFloat)alpha;
@end
