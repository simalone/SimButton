//
//  UIScrollView+SimAdditions.m
//  Test
//
//  Created by LiuXubin on 15/11/24.
//  Copyright © 2015年 sim. All rights reserved.
//

#import "UIScrollView+SimAdditions.h"
#import "UIView+SimAdditions.h"

@implementation UIScrollView (SimCategory)

- (void)scrollToBottom:(BOOL)animated
{
    CGFloat offY = MAX(0, self.contentSize.height-self.height+self.contentInset.top+self.contentInset.bottom);
    [self setContentOffset:CGPointMake(0, offY) animated:animated];
}

- (void)scrollToRight:(BOOL)animated
{
    CGFloat offX = MAX(0, self.contentSize.width-self.width+self.contentInset.left+self.contentInset.right);
    [self setContentOffset:CGPointMake(0, offX) animated:animated];

}

@end
