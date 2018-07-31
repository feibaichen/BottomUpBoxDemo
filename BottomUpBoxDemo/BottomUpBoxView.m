//
//  BottomUpBoxView.m
//  BottomUpBoxDemo
//
//  Created by MacOS on 2018/7/25.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import "BottomUpBoxView.h"

#define SCW [UIScreen mainScreen].bounds.size.width
#define SCH [UIScreen mainScreen].bounds.size.height

@implementation BottomUpBoxView

- (instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        self.backBaseView.frame = frame;
        [self setUI];
    }
    return self;
}

- (void)setUI{
    
    [self addSubview:self.backBaseView];
    [self.bottomUpView addSubview:self.backImageView];
    [self.bottomUpView addSubview:self.cancelButton];
    [self addSubview:self.bottomUpView];
    
    
    __weak __typeof__(self) weakSelf = self;
    [UIView animateWithDuration:0.5 animations:^{
        weakSelf.bottomUpView.frame = CGRectMake(30, 100, SCW - 60, SCH - 100) ;
    }];
    
}

- (UIButton *)cancelButton{
    if (!_cancelButton) {
        _cancelButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 30, 30)];
        _cancelButton.center = CGPointMake(_bottomUpView.frame.size.width/2, _bottomUpView.frame.size.height - 50);
        [_cancelButton setImage:[UIImage imageNamed:@"close"] forState:UIControlStateNormal];
        _cancelButton.clipsToBounds = YES;
        _cancelButton.layer.cornerRadius = 15;
        [_cancelButton addTarget:self action:@selector(clickCancelBtn:) forControlEvents:UIControlEventTouchUpInside];
        _cancelButton.alpha = 1;
    }
    return _cancelButton;
}

- (void)clickCancelBtn:(UIButton *)button{
    NSLog(@"clickCancelBtn");
    [self removeFromSuperview];
    
    if ([_delegate respondsToSelector:@selector(clickCancelBtn:)]) {
        [_delegate hadClickCancelButton:button];
    }
}

- (UIImageView *)backImageView{
    if (!_backImageView) {
        _backImageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, _bottomUpView.frame.size.width, _bottomUpView.frame.size.height - 100)];
        _backImageView.image = [UIImage imageNamed:@"back.jpg"];
        _backImageView.backgroundColor = [UIColor redColor];
        _backImageView.alpha = 1;
    }
    return _backImageView;
}

- (UIView *)backBaseView{
    if (!_backBaseView) {
        _backBaseView = [[UIView alloc]init];
        _backBaseView.backgroundColor = [UIColor blackColor];
        _backBaseView.alpha = 0.1;
    }
    return _backBaseView;
}

- (UIView *)bottomUpView{
    if (!_bottomUpView) {
        _bottomUpView = [[UIView alloc]initWithFrame:CGRectMake(30, SCH, SCW - 60, SCH - 100)];
        _bottomUpView.backgroundColor = [UIColor clearColor];
        _bottomUpView.layer.shadowOpacity = 0.6;
        _bottomUpView.layer.shadowOffset = CGSizeMake(0, 3);
        _bottomUpView.layer.shadowRadius = 10;
    }
    return _bottomUpView;
}
@end
