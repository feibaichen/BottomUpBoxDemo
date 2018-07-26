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

-(instancetype)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        self.backBaseView.frame = frame;
        [self setUI];
    }
    return self;
}
-(void)setUI{
    
    [self addSubview:self.backBaseView];
    [self addSubview:self.bottomUpView];
    
    
    __weak __typeof__(self) weakSelf = self;
    [UIView animateWithDuration:0.5 animations:^{
        weakSelf.bottomUpView.frame = CGRectMake(30, 100, SCW - 60, SCH - 200) ;
    }];
}
-(UIView *)backBaseView{
    if (!_backBaseView) {
        _backBaseView = [[UIView alloc]init];
        _backBaseView.backgroundColor = [UIColor blackColor];
        _backBaseView.alpha = 0.1;
    }
    return _backBaseView;
}
-(UIView *)bottomUpView{
    if (!_bottomUpView) {
        _bottomUpView = [[UIView alloc]initWithFrame:CGRectMake(30, SCH, SCW - 60, SCH - 200)];
        _bottomUpView.backgroundColor = [UIColor redColor];
    }
    return _bottomUpView;
}
@end
