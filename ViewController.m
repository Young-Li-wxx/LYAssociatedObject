//
//  ViewController.m
//  LYAssociatedObject
//
//  Created by Gordon on 16/8/22.
//  Copyright © 2016年 Gordon. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+Extension.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.ly_name = @"hello world";
    
    NSLog(@"%@",self.ly_name);
}



@end
