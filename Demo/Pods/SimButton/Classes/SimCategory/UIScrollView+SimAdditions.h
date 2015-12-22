//
//  UIScrollView+SimAdditions.h
//  Test
//
//  Created by LiuXubin on 15/11/24.
//  Copyright © 2015年 sim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (SimCategory)

/**
 * 适用于横向UIScrollView，滑向最右边
 */
- (void)scrollToRight:(BOOL)animated;

/**
 * 适用于纵向UIScrollView，滑向最下面
 */
- (void)scrollToBottom:(BOOL)animated;

@end
