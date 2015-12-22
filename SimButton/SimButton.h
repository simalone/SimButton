//
//  SimButton.h
//
//  Created by LiuXubin on 15/3/13.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ButtonIconPosition){
    BIP_None,       //默认的系统样式
    BIP_Left,       //icon在文本左边
    BIP_Right,      //icon在文本右边
    BIP_Top,        //icon在文本上面
    BIP_Bottom,     //icon在文本下面
    BIP_Center,     //文字在图片上面，都居中对齐
};

@interface SimButton : UIButton

@property (nonatomic, assign) CGFloat iconTextMargin;
@property (nonatomic, assign) ButtonIconPosition iconPostion;


@end
