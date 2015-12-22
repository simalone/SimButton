//
//  UIWindow+SimAdditions.h
//
//  Created by Xubin Liu on 13-12-1.
//  Copyright (c) 2013年 Liu Xubin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIWindow (SimCategory)

//获取最上层Window，除键盘和UIAlertView之外。
+ (UIWindow *)getTopWindow;

@end
