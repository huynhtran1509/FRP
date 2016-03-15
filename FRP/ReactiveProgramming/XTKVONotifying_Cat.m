//
//  XTKVONotifying_Cat.m
//  FRP
//
//  Created by 晓童 韩 on 16/3/15.
//  Copyright © 2016年 晓童 韩. All rights reserved.
//

#import "XTKVONotifying_Cat.h"
#import <objc/runtime.h>

@implementation XTKVONotifying_Cat

- (void)setWeight:(float)weight {
    [super setWeight:weight];
    
    // 通知观察者属性已改变，这里的observer即为ReactiveProgrammingViewController
    id observer = objc_getAssociatedObject(self, @"observer");
    [observer observeValueForKeyPath:@"weight" ofObject:self change:nil context:nil];
}

@end
