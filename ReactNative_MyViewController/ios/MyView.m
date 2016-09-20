//
//  MyView.m
//  ReactNative_MyViewController
//
//  Created by 张晓珊 on 16/9/20.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "MyView.h"
#import "MyViewController.h"
#import "RCTBridgeModule.h"

@interface MyView ()

@property (nonatomic, strong) MyViewController *myViewController;
@property (nonatomic, strong) UIView *myView;

@end


@implementation MyView

- (instancetype)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    self.backgroundColor = [UIColor yellowColor];
    [self setUpUI];
  }
  return self;
}

- (void)setUpUI {
  self.myView.frame = CGRectMake(10, 10, 20, 20);
  [self addSubview:self.myView];
}

- (NSInteger)test4 {
  return [self.myViewController test4];
}

- (void)setIsTest1:(BOOL)isTest1 {
  _isTest1 = isTest1;
  if (isTest1) {
    [self.myViewController test1];
  }
}

- (void)setValue:(NSInteger)value {
  _value = value;
  self.myViewController.value = value;
}

- (void)setNum:(NSInteger)num {
  _num = num;
  [self.myViewController test2WithNum:num];
}

- (void)setInfoDict:(NSDictionary *)infoDict {
  _infoDict = infoDict;
  [self.myViewController test3WithNum1:infoDict[@"num1"] AndNum2:infoDict[@"num2"]];
}

#pragma mark - 懒加载
- (UIView *)myView {
  if (!_myView) {
    self.myViewController = [MyViewController new];
    _myView = self.myViewController.view;
  }
  return _myView;
}


@end
