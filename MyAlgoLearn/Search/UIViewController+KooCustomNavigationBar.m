//
//  UIViewController+KooCustomNavigationBar.m
//  KooAppHD
//
//  Created by 首席颜值官 on 2017/9/27.
//  Copyright © 2017年 suanle. All rights reserved.
//

#import "UIViewController+KooCustomNavigationBar.h"
#import "Masonry.h"
#import <objc/runtime.h>

@implementation UIViewController (KooCustomNavigationBar)

- (void)setBackgroundImage:(UIImage *)image
{
    if(image == nil && self.bgImageView != nil)
    {
        [self.bgImageView removeFromSuperview];
        self.bgImageView = nil;
        return;
    }
    
    if (self.bgImageView == nil)
    {
        CGRect frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        UIImageView *backgroundView = [[UIImageView alloc] initWithFrame:frame];
        [self.view insertSubview:backgroundView atIndex:0];
        objc_setAssociatedObject(self, bgImageViewKey, backgroundView, OBJC_ASSOCIATION_RETAIN);
    }
    
    UIImage *resizableImage = [image resizableImageWithCapInsets:UIEdgeInsetsMake(70, 0, 0, 0) resizingMode:UIImageResizingModeStretch];
    self.bgImageView.image = resizableImage;
}

- (void)showTitle:(NSString *)title
{
    if (!self.titleLabel) {
        UILabel *titleLabel = [[UILabel alloc] init];
        titleLabel.font = [UIFont boldSystemFontOfSize:16];
        titleLabel.textAlignment = NSTextAlignmentCenter;
        titleLabel.textColor = [UIColor blackColor];
        titleLabel.text = title;
        [self.view addSubview:titleLabel];
        [titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(80.f);
            make.right.mas_equalTo(-80.f);
            make.top.mas_equalTo(10.f);
            make.height.mas_equalTo(22.f);
        }];
        objc_setAssociatedObject(self, titleKey, titleLabel, OBJC_ASSOCIATION_RETAIN);
    }
    else
    {
        self.titleLabel.text = title;
    }
}

- (void)showCloseBarButton:(BOOL)isShow
{
    if (!self.backBtn) {
        UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        backBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [backBtn setImage:[UIImage imageNamed:@"class_nav_close"] forState:UIControlStateNormal];
        [self.view addSubview:backBtn];
        [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(10.f);
            make.top.mas_equalTo(0.f);
            make.height.mas_equalTo(44.f);
            make.width.mas_equalTo(50.f);
        }];
        objc_setAssociatedObject(self, backKey, backBtn, OBJC_ASSOCIATION_RETAIN);
    }
    [self.backBtn setImage:[UIImage imageNamed:@"class_nav_close"] forState:UIControlStateNormal];
    self.backBtn.hidden = !isShow;
}

- (void)showBackBarButton:(BOOL)isShow
{
    if (!self.backBtn) {
        UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [backBtn setImage:[UIImage imageNamed:@"class_nav_back_black"] forState:UIControlStateNormal];
        backBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [self.view addSubview:backBtn];
        [backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.left.mas_equalTo(10.f);
            make.top.mas_equalTo(0.f);
            make.height.mas_equalTo(44.f);
            make.width.mas_equalTo(50.f);
        }];
        objc_setAssociatedObject(self, backKey, backBtn, OBJC_ASSOCIATION_RETAIN);
    }
    [self.backBtn setImage:[UIImage imageNamed:@"class_nav_back_black"] forState:UIControlStateNormal];

    self.backBtn.hidden = !isShow;
}

- (void)showRightBarButton:(UIImage *)image
{
    if (image == nil)
    {
        if (self.rightBtn)
        {
            [self.rightBtn removeFromSuperview];
            self.rightBtn = nil;
        }
        return;
    }
    
    if (!self.rightBtn) {
        UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [rightBtn setImage:image forState:UIControlStateNormal];
        rightBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [self.view addSubview:rightBtn];
        [rightBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-10.f);
            make.top.mas_equalTo(7.f);
            make.height.mas_equalTo(30.f);
            make.width.mas_equalTo(30.f);
        }];
        objc_setAssociatedObject(self, rightBtnKey, rightBtn, OBJC_ASSOCIATION_RETAIN);
    }
    [self.rightBtn setImage:image forState:UIControlStateNormal];

}

- (void)showRightBarButtonWithButtonTitle:(NSString *)title
{
    if (title == nil)
    {
        if (self.rightBtn)
        {
            [self.rightBtn removeFromSuperview];
            self.rightBtn = nil;
        }
        return;
    }
    
    if (!self.rightBtn) {
        UIButton *rightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        rightBtn.titleLabel.font = [UIFont systemFontOfSize:15];
        [rightBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [rightBtn setTitle:title forState:UIControlStateNormal];
        rightBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [self.view addSubview:rightBtn];
        [rightBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(-10.f);
            make.top.mas_equalTo(7.f);
            make.height.mas_equalTo(30.f);
            make.width.mas_equalTo(80.f);
        }];
        objc_setAssociatedObject(self, rightBtnKey, rightBtn, OBJC_ASSOCIATION_RETAIN);
    }
    [self.rightBtn setTitle:title forState:UIControlStateNormal];

}

- (void)showRightBarButton1:(UIImage *)image
{
    if (image == nil)
    {
        if (self.rightBtn1)
        {
            [self.rightBtn1 removeFromSuperview];
            self.rightBtn1 = nil;
        }
        return;
    }
    
    if (!self.rightBtn1) {
        UIButton *rightBtn1 = [UIButton buttonWithType:UIButtonTypeCustom];
        [rightBtn1 setImage:image forState:UIControlStateNormal];
        rightBtn1.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        [self.view addSubview:rightBtn1];
        [rightBtn1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.right.mas_equalTo(self.rightBtn.mas_left).offset(-10);
            make.top.mas_equalTo(7.f);
            make.height.mas_equalTo(30.f);
            make.width.mas_equalTo(30.f);
        }];
        objc_setAssociatedObject(self, rightBtn1Key, rightBtn1, OBJC_ASSOCIATION_RETAIN);
    }
    [self.rightBtn1 setImage:image forState:UIControlStateNormal];
}

- (void)setBgImageView:(UIImageView *)bgImageView
{
    objc_setAssociatedObject(self, bgImageViewKey, bgImageView, OBJC_ASSOCIATION_RETAIN);
}

- (void)setBackBtn:(UIButton *)backBtn
{
    objc_setAssociatedObject(self, backKey, backBtn, OBJC_ASSOCIATION_RETAIN);
}

- (void)setTitleLabel:(UILabel *)titleLabel
{
    objc_setAssociatedObject(self, titleKey, titleLabel, OBJC_ASSOCIATION_RETAIN);
}

- (void)setRightBtn:(UIButton *)rightBtn
{
    objc_setAssociatedObject(self, rightBtnKey, rightBtn, OBJC_ASSOCIATION_RETAIN);
}

- (void)setRightBtn1:(UIButton *)rightBtn1
{
    objc_setAssociatedObject(self, rightBtn1Key, rightBtn1, OBJC_ASSOCIATION_RETAIN);
}

- (UIImageView *)bgImageView
{
    return objc_getAssociatedObject(self, bgImageViewKey);
}

- (UILabel *)titleLabel
{
    return objc_getAssociatedObject(self, titleKey);
}

- (UIButton *)backBtn
{
    return objc_getAssociatedObject(self, backKey);
}

- (UIButton *)rightBtn
{
    return objc_getAssociatedObject(self, rightBtnKey);
}

- (UIButton *)rightBtn1
{
    return objc_getAssociatedObject(self, rightBtn1Key);
}

@end
