//
//  UIAlertView+UserInfo.h
//

#import <UIKit/UIKit.h>

@interface UIAlertView (SimCategory)
typedef void(^AlertViewDismissBlock)(NSInteger selectIndex);

/**
 * 添加额外数据支持。
 */
@property (nonatomic, strong) id userInfo;


/**
 * 添加block支持， 初始化时delegate为：[UIAlertView class]
 */
@property (nonatomic, copy) AlertViewDismissBlock didmissBlock;

@end
