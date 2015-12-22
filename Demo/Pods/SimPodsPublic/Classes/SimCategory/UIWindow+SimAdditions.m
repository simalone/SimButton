//
//  UIWindowAddition.m
//
//  Created by Xubin Liu on 13-12-1.
//  Copyright (c) 2013年 Liu Xubin. All rights reserved.
//

#import "UIWindow+SimAdditions.h"

@implementation UIWindow(SimCategory)

+ (UIWindow *)getTopWindow
{
	int topWindowsIdx = -1;
	float maxWindowsLevel = -1;
	int i = 0;
    
    CGFloat maxWindowLevel = 2;
    if ([[UIDevice currentDevice].systemVersion floatValue] < 9.0) {
        //iOS8.4.1 键盘windowLevel，第1次为10，之后弹起为1。。。
        maxWindowLevel = 0;
    }
    
    NSArray *_windows = [UIApplication sharedApplication].windows;
	for (UIWindow *window in _windows) {
		if (window.windowLevel >= maxWindowsLevel && !window.hidden && window.windowLevel <= maxWindowLevel) {
			maxWindowsLevel = window.windowLevel;
			topWindowsIdx = i;
		}
		i++;
	}
    
    if (topWindowsIdx >= 0 && topWindowsIdx < _windows.count) {
        return _windows[topWindowsIdx];
    }

    return nil;

}

@end
