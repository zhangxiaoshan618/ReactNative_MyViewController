//
//  MyViewController.m
//  ReactNative_MyViewController
//
//  Created by 张晓珊 on 16/9/20.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "MyViewController.h"

@interface MyViewController ()

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  self.view.backgroundColor = [UIColor blueColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setValue:(NSInteger)value {
  _value = value;
  NSLog(@"属性value被赋值了");
}

- (void)test1 {
  NSLog(@"test1——无参数无返回值的方法被调用了");
}

- (void)test2WithNum:(NSInteger)num {
  NSLog(@"test2——有一个参数无返回值的方法被调用了，参数为：%zd", num );
}


- (void)test3WithNum1:(NSInteger)num1 AndNum2:(NSInteger)num2 {
   NSLog(@"test3——有多个参数无返回值的方法被调用了，参数1为：%zd，参数2为：%zd", num1, num2 );
}

- (NSInteger)test4 {
  NSLog(@"test4——有返回值的方法被调用了");
  
  return 8;
}


@end
