//
//  ViewController.m
//  ZWUIViewExtensionDemo
//
//  Created by rayootech on 2017/3/10.
//  Copyright © 2017年 gmjr. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ZWExtension.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self demo1];
}

- (void)demo1{
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 40)];
    view.rightEqualToView(self.view);
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    //view.rightEqualToView(self.view);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
