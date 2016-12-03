YHPopupView
=============
[![CocoaPods](https://img.shields.io/cocoapods/v/YHPopupView.svg)]()
[![CocoaPods](https://img.shields.io/cocoapods/p/YHPopupView.svg)]()
[![CocoaPods](https://img.shields.io/cocoapods/l/YHPopupView.svg)]()

[中文介绍](http://www.jianshu.com/p/4555d04d1a22)

A pubilic popup view, **YHPopupView**, is provided on iOS. And it can be used and customized convieniencely. Then you can focus on the view with the context that you want to show. 

![demo](Images/0.png)


Installation
============

The preferred way of installation is via [CocoaPods](http://cocoapods.org). Just add

```ruby
pod 'YHPopupView'
```

and run `pod install`. It will install the most recent version of YHPopupView.

If you would like to use the latest code of YHPopupView use:

```ruby
pod 'YHPopupView', :head
```

Usage
===============
```objc
#import "ViewController.h"
#import "YHPopupView.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    YHPopupView *popupView = [[YHPopupView alloc] initWithFrame:CGRectMake(50, 50, 200, 200)];
    popupView.clickBlankSpaceDismiss = YES;
    // You can add subview in need
    popupView.backgroundColor = [UIColor blueColor];
    [self presentPopupView:popupView];
}

@end
```


Changelog
===============

v0.1.0  first version
