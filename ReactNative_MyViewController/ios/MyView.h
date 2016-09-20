//
//  MyView.h
//  ReactNative_MyViewController
//
//  Created by 张晓珊 on 16/9/20.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyView : UIView

/// 提供给JS使用的属性

@property (nonatomic, assign) NSInteger value;
@property (nonatomic, assign) BOOL isTest1;
@property (nonatomic, assign) NSInteger num;

/// test3方法对应的属性，num1对应的key为@“num1”,num2对应的key为@“num2”
@property (nonatomic, strong) NSDictionary *infoDict;

- (NSInteger)test4;

@end
