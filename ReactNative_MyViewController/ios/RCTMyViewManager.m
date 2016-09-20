//
//  RCTMyViewManager.m
//  ReactNative_MyViewController
//
//  Created by 张晓珊 on 16/9/20.
//  Copyright © 2016年 Facebook. All rights reserved.
//

#import "RCTMyViewManager.h"
#import "MyView.h"
#import "RCTBridge.h"
#import "RCTUIManager.h"
#import "RCTEventDispatcher.h"

@implementation RCTMyViewManager

RCT_EXPORT_MODULE()
RCT_EXPORT_VIEW_PROPERTY(value, NSInteger)
RCT_EXPORT_VIEW_PROPERTY(isTest1, BOOL)
RCT_EXPORT_VIEW_PROPERTY(num, NSInteger)
RCT_EXPORT_VIEW_PROPERTY(infoDict, NSDictionary)


#pragma mark - 导出函数供JS调用

RCT_EXPORT_METHOD(test4:(nonnull NSNumber *)reactTag
                  resolve:(RCTPromiseResolveBlock)resolve
                  reject:(RCTPromiseRejectBlock)reject){
  
  NSLog(@"test4方法被调用了");
  MyView *myView = [self getViewWithTag:reactTag];
  NSInteger value = [myView test4];

  if (value) {
    resolve([NSNumber numberWithInteger:value]);
  }else {
    reject(@"1002", @"调用方法4出错", [NSError errorWithDomain:@"调用方法4出错" code:1002 userInfo:nil]);
  }
  
}




/// 拿到当前View
- (MyView *) getViewWithTag:(NSNumber *)tag {
  NSLog(@"%@", [NSThread currentThread]);
  
  UIView *view = [self.bridge.uiManager viewForReactTag:tag];
  return [view isKindOfClass:[MyView class]] ? (MyView *)view : nil;
}

/// 重写这个方法，返回将要提供给RN使用的视图
- (UIView *)view {
  return [[MyView alloc] initWithFrame: [UIScreen mainScreen].bounds];
}


- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

@end
