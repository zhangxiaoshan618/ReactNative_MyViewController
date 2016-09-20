//
//  MyViewController.h
//  ReactNative_MyViewController
//
//  Created by 张晓珊 on 16/9/20.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyViewController : UIViewController

@property (nonatomic, assign) NSInteger value;

- (void)test1;
- (void)test2WithNum:(NSInteger)num;
- (void)test3WithNum1:(NSInteger)num1 AndNum2:(NSInteger)num2;
- (NSInteger)test4;

@end
