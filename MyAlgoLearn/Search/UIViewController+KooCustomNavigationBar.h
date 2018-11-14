//
//  UIViewController+KooCustomNavigationBar.h
//  KooAppHD
//
//  Created by 首席颜值官 on 2017/9/27.
//  Copyright © 2017年 suanle. All rights reserved.
//

#import <UIKit/UIKit.h>

#define titleKey @"KooCustomNavLableKey"
#define backKey @"KooCustomNavBackKey"
#define rightBtnKey @"KooCustomNavRightBtnKey"
#define rightBtn1Key @"KooCustomNavRightBtn1Key"
#define bgImageViewKey @"KooCustomNavBgImageViewKey"

@interface UIViewController (KooCustomNavigationBar)

@property (nonatomic, strong) UIImageView *bgImageView;

@property (nonatomic, strong) UILabel *titleLabel;

@property (nonatomic, strong) UIButton *backBtn;

@property (nonatomic, strong) UIButton *rightBtn;

@property (nonatomic, strong) UIButton *rightBtn1;

- (void)setBackgroundImage:(UIImage *)image;

- (void)showTitle:(NSString *)title;

- (void)showBackBarButton:(BOOL)isShow;
- (void)showCloseBarButton:(BOOL)isShow;

- (void)showRightBarButton:(UIImage *)image;

- (void)showRightBarButton1:(UIImage *)image;

- (void)showRightBarButtonWithButtonTitle:(NSString *)title;
@end
