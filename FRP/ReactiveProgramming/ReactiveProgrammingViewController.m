//
//  ReactiveProgrammingViewController.m
//  FRP
//
//  Created by 晓童 韩 on 16/3/15.
//  Copyright © 2016年 晓童 韩. All rights reserved.
//

#import "ReactiveProgrammingViewController.h"
#import "Cat.h"
#import "NSObject+KVO.h"

@interface ReactiveProgrammingViewController ()

@property (nonatomic, strong) Cat *cat;

@end

@implementation ReactiveProgrammingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Cat *cat = [[Cat alloc] init];
    self.cat = cat;
    
//    [cat addObserver:self forKeyPath:@"weight" options:NSKeyValueObservingOptionNew context:nil];
    [cat xt_addObserver:self forKeyPath:@"weight" options:NSKeyValueObservingOptionNew context:nil];
}

/**
 *  当对象的属性发生改变会调用该方法
 *  @param keyPath 监听的属性
 *  @param object  监听的对象
 *  @param change  新值和旧值
 *  @param context 额外的数据
 */
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
    NSLog(@"%f", self.cat.weight);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.cat.weight+=0.5;
}

- (void)dealloc {
    NSLog(@"%@ dealloc", [self class]);
    [self.cat removeObserver:self forKeyPath:@"weight"];
}

@end
