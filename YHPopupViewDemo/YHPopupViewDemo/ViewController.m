//
//  ViewController.m
//  YHPopupViewDemo
//
//  Created by deng on 16/12/2.
//  Copyright © 2016年 dengyonghao. All rights reserved.
//

#import "ViewController.h"
#import "YHPopupView.h"

@interface ViewController () {
    YHPopupViewAnimation *_animation;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showPopupView:(id)sender {
    YHPopupView *popupView = [[YHPopupView alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    popupView.clickBlankSpaceDismiss = YES;
    
    UIButton *closeButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 50, 120, 50)];
    closeButton.backgroundColor = [UIColor yellowColor];
    [closeButton setTitle:@"close popupview" forState:UIControlStateNormal];
    [closeButton addTarget:self action:@selector(closePopupView) forControlEvents:UIControlEventTouchUpInside];
    [popupView addSubview:closeButton];
    
    popupView.backgroundColor = [UIColor blueColor];
    [self presentPopupView:popupView];
}
- (IBAction)showAnimationPopupView:(id)sender {
    _animation = [[YHPopupViewAnimation alloc]
                                       initWithPopupStartRect:CGRectMake(50, 50, 200, 0)
                                       popupEndRect:CGRectMake(50, 50, 200, 200)
                                       dismissEndRect:CGRectMake(50, 50, 200, 0)];
    
    YHPopupView *popupView = [[YHPopupView alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    popupView.clickBlankSpaceDismiss = YES;
    
    UIButton *closeButton = [[UIButton alloc] initWithFrame:CGRectMake(30, 50, 120, 50)];
    [closeButton setTitle:@"close popupview" forState:UIControlStateNormal];
    [closeButton addTarget:self action:@selector(closeAnimationPopupView) forControlEvents:UIControlEventTouchUpInside];
    [popupView addSubview:closeButton];
    
    popupView.backgroundColor = [UIColor blueColor];
    [self presentPopupView:popupView animation:_animation];
}

- (void)closePopupView {
    [self dismissPopupView];
}

- (void)closeAnimationPopupView {
    [self dismissPopupViewWithAnimation:_animation];
}

@end
