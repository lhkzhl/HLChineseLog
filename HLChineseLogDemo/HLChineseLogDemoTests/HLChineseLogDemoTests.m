//
//  HLChineseLogDemoTests.m
//  HLChineseLogDemoTests
//
//  Created by  xueguoxue on 2018/4/3.
//  Copyright © 2018年 lhkzhl. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <HLChineseLog/NSDictionary+Chinese.h>
@interface HLChineseLogDemoTests : XCTestCase

@end

@implementation HLChineseLogDemoTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void)testLog{
    id obj = @[@"中国",@"中国人",@{@"中国":@"强大",@"中国人":@[@"勤劳",@"勇敢"]}];
    NSLog(@"%@",obj);
}


@end
