//
//  ViewController.m
//  BottomUpBoxDemo
//
//  Created by MacOS on 2018/7/25.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import "ViewController.h"
#import "BottomUpBoxView.h"

@interface ViewController ()<BottomUpBoxDelegate>
@property(nonatomic,strong) BottomUpBoxView *boxView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton * button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 50)];
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"显示" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(clickCancelBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)clickCancelBtn:(UIButton *)button{
    NSLog(@"show");
    [_boxView removeFromSuperview];
    _boxView = [[BottomUpBoxView alloc] initWithFrame:self.view.bounds];
    _boxView.delegate = self;
    [self.view addSubview:_boxView];
}
-(void)hadClickCancelButton:(UIButton *)button{
    NSLog(@"hadClickCancelButton");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
