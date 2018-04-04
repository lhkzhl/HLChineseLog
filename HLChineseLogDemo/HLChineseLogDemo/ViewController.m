//
//  ViewController.m
//  HLChineseLogDemo
//
//  Created by  xueguoxue on 2018/4/3.
//  Copyright © 2018年 lhkzhl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    id obj = @[@"中国",@"中国人",@{@"中国":@"强大",@"中国人":@[@"勤劳",@"勇敢"]}];
    NSLog(@"%@",obj);

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
