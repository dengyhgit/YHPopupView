//
//  ViewController.m
//  YHPopupViewDemo
//
//  Created by deng on 16/12/2.
//  Copyright © 2016年 dengyonghao. All rights reserved.
//

#import "ViewController.h"
#import "YHPopupView.h"
#import "YHMessageView.h"

@interface ViewController () <YHMessageViewDelegate> {
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
                                       initWithPopupStartRect:CGRectMake(50, -150, 200, 200)
                                       popupEndRect:CGRectMake(50, 50, 200, 200)
                                       dismissEndRect:CGRectMake(50, -150, 200, 200)];
    
    YHPopupView *popupView = [[YHPopupView alloc] initWithFrame:CGRectMake(50, -150, 200, 200)];
    popupView.clickBlankSpaceDismiss = YES;
    
    UIButton *closeButton = [[UIButton alloc] initWithFrame:CGRectMake(30, 50, 120, 50)];
    [closeButton setTitle:@"close popupview" forState:UIControlStateNormal];
    closeButton.backgroundColor = [UIColor yellowColor];
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
- (IBAction)showMessageView:(id)sender {
    YHMessageView *messageView = [[YHMessageView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 80)];
    messageView.showTime = 3;
    messageView.backgroundColor = [[UIColor alloc] initWithWhite:0 alpha:0.5];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 20, 200, 30)];
    label.text = @"to show message and other";
    messageView.delegate = self;
    [messageView addSubview:label];
    [self presentMessageView:messageView];
}

- (void)tapMessageView:(YHMessageView *)messageView {
    NSLog(@"tapMessageView");
}

@end
