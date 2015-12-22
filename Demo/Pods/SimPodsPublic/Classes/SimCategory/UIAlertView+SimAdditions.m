//
//  UIAlertView+UserInfo.m
//

#import "UIAlertView+SimAdditions.h"
#import <objc/runtime.h>

@implementation UIAlertView (SimCategory)


static char AlertViewUserInfoPrivateKey;
static char AlertViewDismissBlockPrivateKey;


- (void)setUserInfo:(id)userInfo
{
    objc_setAssociatedObject(self, &AlertViewUserInfoPrivateKey, userInfo, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)userInfo
{
    return objc_getAssociatedObject(self, &AlertViewUserInfoPrivateKey);
}

- (void)setDidmissBlock:(AlertViewDismissBlock)didmissBlock
{
    self.delegate = [UIAlertView class];
    objc_setAssociatedObject(self, &AlertViewDismissBlockPrivateKey, didmissBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (AlertViewDismissBlock)didmissBlock
{
    return objc_getAssociatedObject(self, &AlertViewDismissBlockPrivateKey);
}

+ (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(alertView.didmissBlock) {
        alertView.didmissBlock(buttonIndex);
        alertView.didmissBlock = nil;
    }
}




@end
