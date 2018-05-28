//
//  ViewController.m
//  PhoneFieldOC
//
//  Created by 云中科技 on 2018/4/25.
//  Copyright © 2018年 云中科技. All rights reserved.
//

#import "ViewController.h"
#import "PhoneField.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    PhoneField * textField = [[PhoneField alloc]init];
    textField.frame = CGRectMake(10, 100, 200, 30);
    textField.backgroundColor = [UIColor redColor];
    [self.view addSubview:textField];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
