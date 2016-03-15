//
//  FunctionalProgrammingViewController.m
//  FRP
//
//  Created by 晓童 韩 on 16/3/15.
//  Copyright © 2016年 晓童 韩. All rights reserved.
//

#import "FunctionalProgrammingViewController.h"
#import "Calculator.h"

@interface FunctionalProgrammingViewController ()

@end

@implementation FunctionalProgrammingViewController

//Calculator实现加法功能，并且判断是否等于某个值
- (void)viewDidLoad {
    [super viewDidLoad];

    Calculator *calculator = [[Calculator alloc] init];
    
    //验证计数器功能
    int result = [[calculator add:^int(int result) {
        
        // 把计算的过程写到block中
        result+=2;
        result+=3;
        return result;
        
    }] result];
    
    NSLog(@"验证加法功能:%d", result);
    
    Calculator *calculator2 = [[Calculator alloc] init];
    
    //验证是否等于某个值
    BOOL isEqual = [[[calculator2 add:^int(int result) {
        
        // 把计算的过程写到block中
        result+=3;
        result+=4;
        return result;
        
    }] equal:^BOOL(int result) {
        
        return result == 7;
    }] isEqual];
    
    NSLog(@"验证加法功能:%d", isEqual);
}

@end
