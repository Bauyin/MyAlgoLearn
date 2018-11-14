//
//  UIViewController+KooNavBar.h
//  TestNav
//
//  Created by 崔宝印 on 2018/2/28.
//  Copyright © 2018年 Koolearn. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UINavigationController+KooNavAlpha.h"

@interface UIViewController (KooNavBar)
/**
 导航栏透明度
 */
@property (nonatomic, assign) CGFloat kooNavBarAlpha;

/**
 导航栏背景色
 */
@property (nonatomic, strong) UIColor *kooNavBarTintColor;

/**
 操作按钮颜色
 */
@property (nonatomic, strong) UIColor *kooNavTintColor;

/**
 标题颜色
 */
@property (nonatomic, strong) UIColor *kooNavTitileColor;

/**
 返回按钮图片
 */
@property (nonatomic, strong) UIImage *kooNavBackImage;

@end
