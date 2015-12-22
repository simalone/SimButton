SimButton
========
<img align="center" src="https://github.com/simalone/SimButton/blob/master/Demo/ScreenShot/demo_screenshot.png?raw=true" alt="ScreenShot" width="300">

###Purpose
Usually, we use __imageEdgeInsets__ and __titleEdgeInsets__ to implement a button on the text and icon of the horizontal or vertical arrangement, these settings of UIButton is very troublesome.
SimButton set the desired effect by setting the __iconPostion__ and __iconTextMargin__ simply.


###Support
 ```objective-c
  typedef NS_ENUM(NSInteger, ButtonIconPosition){
    BIP_None,       //默认的系统样式
    BIP_Left,       //icon在文本左边
    BIP_Right,      //icon在文本右边
    BIP_Top,        //icon在文本上面
    BIP_Bottom,     //icon在文本下面
    BIP_Center,     //文字在图片上面，都居中对齐
};
 ```

###Easy Example
  ```objective-c
    SimButton *btn = [[SimButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    [btn setImage:[UIImage imageNamed:@"demo"] forState:UIControlStateNormal];
    [btn setTitle:@"Test" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn.iconPostion = BIP_Bottom;
    btn.iconTextMargin = 10;
 ```
 
###More Examples
Please check the demo project I provided.
After donwload demo project, in terminal, cd to demo project, update pods,  then run project.
 
###Requirements
* ARC
* iOS 6.0+


###CocoaPods
(Unfamiliar with [CocoaPods](http://cocoapods.org/) yet? It's a dependency management tool for iOS and Mac, check it out!)

1. Add `pod 'SimButton'` to your podfiles
