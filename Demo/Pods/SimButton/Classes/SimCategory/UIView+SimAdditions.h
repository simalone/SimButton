#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (SimCategory) <UIGestureRecognizerDelegate>

@property(nonatomic) CGFloat left;
@property(nonatomic) CGFloat top;
@property(nonatomic) CGFloat right;
@property(nonatomic) CGFloat bottom;

@property(nonatomic) CGFloat width;
@property(nonatomic) CGFloat height;

@property(nonatomic) CGFloat centerX;
@property(nonatomic) CGFloat centerY;

@property(nonatomic,readonly) CGFloat screenX;
@property(nonatomic,readonly) CGFloat screenY;
@property(nonatomic,readonly) CGFloat screenViewX;
@property(nonatomic,readonly) CGFloat screenViewY;
@property(nonatomic,readonly) CGRect screenFrame;

@property(nonatomic) CGPoint origin;
@property(nonatomic) CGSize size;

@property(nonatomic) BOOL visible;

@property (nonatomic, strong) id userInfo;


/**
 * 删除所有subview
 */
- (void)removeAllSubviews;

/**
 * 获取当前view所在UIViewController
 */
- (UIViewController*)viewController;

/**
 * 点击使键盘消失，用于输入界面的快速取消操作。
 */
- (void)tapResignFirstResponder;



@end
