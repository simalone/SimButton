//
//  SimButton.m
//
//  Created by LiuXubin on 15/3/13.
//

#import "SimButton.h"
#import "UIView+SimAdditions.h"

#define kSimButtonGap 5  //

@interface SimButton()
{
    CGPoint _beginPoint;
    
    BOOL _dragTriggerd;
}

@end

@implementation SimButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    
    return self;
}

- (void)setIconTextMargin:(CGFloat)iconTextMargin
{
    if (_iconTextMargin != iconTextMargin) {
        _iconTextMargin = iconTextMargin;
        if (_iconPostion == BIP_Left || _iconPostion == BIP_Right){
            [self setContentEdgeInsets:UIEdgeInsetsMake(0, _iconTextMargin/2, 0, _iconTextMargin/2)];
        }
        else if (_iconPostion == BIP_Top || _iconPostion == BIP_Bottom){
            [self setContentEdgeInsets:UIEdgeInsetsMake(_iconTextMargin/2, 0, _iconTextMargin/2, 0)];
        }
    }
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    if (_iconPostion != BIP_None) {
        [self.titleLabel sizeToFit];
        if (_iconPostion == BIP_Left || _iconPostion == BIP_Right) {
            self.titleLabel.width = MIN(self.width-_iconTextMargin-kSimButtonGap-self.imageView.width, self.titleLabel.width);
        }
        else{
            self.titleLabel.width = MIN(self.width-kSimButtonGap, self.titleLabel.width);
        }
        if (_iconPostion == BIP_Left){
            CGFloat width = self.imageView.width + self.titleLabel.width + _iconTextMargin;
            self.titleLabel.right = self.width/2 + width/2;
            self.imageView.left = self.width/2 - width/2;
        }
        else if (_iconPostion == BIP_Right) {
            CGFloat width = self.imageView.width + self.titleLabel.width + _iconTextMargin;
            self.imageView.right = self.width/2 + width/2;
            self.titleLabel.left = self.width/2 - width/2;
        }
        else if (_iconPostion == BIP_Center) {
            self.imageView.centerX = self.width/2;
            self.titleLabel.centerX = self.width/2;
        }
        else if (_iconPostion == BIP_Top){
            CGFloat height = self.imageView.height + self.titleLabel.height + _iconTextMargin;
            self.imageView.top = self.height/2 - height/2 + 2;
            self.titleLabel.bottom = self.height/2 + height/2 + 2;
            self.imageView.centerX = self.width/2;
            self.titleLabel.centerX = self.width/2;
        }
        else if (_iconPostion == BIP_Bottom) {
            CGFloat height = self.imageView.height + self.titleLabel.height + _iconTextMargin;
            self.imageView.bottom = self.height/2 + height/2;
            self.titleLabel.top = self.height/2 - height/2;
            self.imageView.centerX = self.width/2;
            self.titleLabel.centerX = self.width/2;
        }
    }
}

- (void)sizeToFit
{
    if (_iconPostion != BIP_None) {
        [self.titleLabel sizeToFit];
        CGFloat width = 0, height = 0;
        if (_iconPostion == BIP_Left || _iconPostion == BIP_Right){
            width = self.titleLabel.width + self.imageView.width + _iconTextMargin + kSimButtonGap;
            height = MAX(self.titleLabel.height, self.imageView.height);
        }
        else if (_iconPostion == BIP_Top || _iconPostion == BIP_Bottom) {
            height = self.titleLabel.height + self.imageView.height + _iconTextMargin;
            width = MAX(self.titleLabel.width, self.imageView.width) + kSimButtonGap;
        }
        else if (_iconPostion == BIP_Center) {
            width = MAX(self.titleLabel.width, self.imageView.width);
            height = MAX(self.titleLabel.height, self.imageView.height);
        }
        self.size = CGSizeMake(width, height);
    }
    else{
        [super sizeToFit];
    }
}


@end
