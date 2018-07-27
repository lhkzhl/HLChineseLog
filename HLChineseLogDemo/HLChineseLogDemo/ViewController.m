//
//  ViewController.m
//  HLChineseLogDemo
//
//  Created by  xueguoxue on 2018/4/3.
//  Copyright © 2018年 lhkzhl. All rights reserved.
//

#import "ViewController.h"




#ifdef DEBUG

#define HLLog(FORMAT, ...) fprintf(stderr,"%s:%d\t%s\n",[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

//NSLog((@"[文件名:%s]\n" "[函数名:%s]\n" "[行号:%d] \n" FORMAT), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__);


//NSLog((@"[文件名:%s]\n" "[函数名:%s]\n" "[行号:%d] \n" FORMAT), __FILE__, __FUNCTION__, __LINE__, ##__VA_ARGS__);

//fprintf(stderr,"%s:%d\t%s\n",[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String], __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else

#define HLLog(...)

#endif

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    id obj = @[@"中国",@"中国人",@{@"中国":@"强大",@"中国人":@[@"勤劳",@"勇敢"]},@[@"中国222",@"中国人222",@{@"中国222":@"强大",@"中国人":@[@"勤劳",@"勇敢"]}]];
    NSLog(@"%@",obj);

//    HLLog(@"%@",obj);


}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
