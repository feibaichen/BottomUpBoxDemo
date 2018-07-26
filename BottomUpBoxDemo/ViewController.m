//
//  ViewController.m
//  BottomUpBoxDemo
//
//  Created by MacOS on 2018/7/25.
//  Copyright © 2018年 MacOS. All rights reserved.
//

#import "ViewController.h"
#import "BottomUpBoxView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    BottomUpBoxView *view = [[BottomUpBoxView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
