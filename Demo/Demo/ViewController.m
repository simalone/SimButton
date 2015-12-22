//
//  ViewController.m
//  Demo
//
//  Created by LiuXubin on 15/12/22.
//  Copyright © 2015年 Sim Pods. All rights reserved.
//

#import "ViewController.h"
#import <SimButton/SimButton.h>
#import <SimPodsPublic/UIView+SimAdditions.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *lb = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, self.view.width, 60)];
    lb.textColor = [UIColor blackColor];
    lb.font = [UIFont boldSystemFontOfSize:40];
    lb.backgroundColor = [UIColor clearColor];
    lb.textAlignment = NSTextAlignmentCenter;
    lb.text = @"SimButton";
    [self.view addSubview:lb];
    
    CGFloat top = 100;
    NSArray *iconPositionStr = @[@"left", @"right", @"top", @"bottom", @"center"];
    for (int i = 0; i < 5; i++){
        UILabel *lb = [[UILabel alloc] initWithFrame:CGRectMake(0, top, self.view.width, 20)];
        lb.textColor = [UIColor whiteColor];
        lb.backgroundColor = [UIColor blackColor];
        lb.textAlignment = NSTextAlignmentCenter;
        lb.text = [NSString stringWithFormat:@"Image is \"%@\" relative to text", iconPositionStr[i]];
        [self.view addSubview:lb];
        
        SimButton *btn = [[SimButton alloc] initWithFrame:CGRectMake(0, lb.bottom+10, self.view.width, 0)];
        [btn setImage:[UIImage imageNamed:@"demo"] forState:UIControlStateNormal];
        [btn setTitle:[NSString stringWithFormat:@"image_%@", iconPositionStr[i]] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        btn.iconPostion = i+1;
        btn.iconTextMargin = 10;
        [btn sizeToFit];
        btn.centerX = self.view.width/2;
        [self.view addSubview:btn];
        top = btn.bottom+10;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
