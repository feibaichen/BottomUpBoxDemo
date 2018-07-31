//
//  BottomUpBoxView.h
//  BottomUpBoxDemo
//
//  Created by MacOS on 2018/7/25.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol BottomUpBoxDelegate<NSObject>

-(void)hadClickCancelButton:(UIButton *)button;

@end

@interface BottomUpBoxView : UIView

@property(nonatomic,assign) id <BottomUpBoxDelegate>delegate;

@property(nonatomic,strong) UIView *backBaseView;
@property(nonatomic,strong) UIView *bottomUpView;

@property(nonatomic,strong) UIImageView *backImageView;
@property(nonatomic,strong) UIButton *cancelButton;

@end
