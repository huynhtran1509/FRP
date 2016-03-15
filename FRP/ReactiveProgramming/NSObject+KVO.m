//
//  NSObject+KVO.m
//  FRP
//
//  Created by 晓童 韩 on 16/3/15.
//  Copyright © 2016年 晓童 韩. All rights reserved.
//

#import "NSObject+KVO.h"
#import "XTKVONotifying_Cat.h"
#import <objc/runtime.h>

@implementation NSObject (KVO)

- (void)xt_addObserver:(NSObject *)observer forKeyPath:(NSString *)keyPath options:(NSKeyValueObservingOptions)options context:(nullable void *)context {
    
    // 修改isa，本质就是改变当前对象的类名
    object_setClass(self, [XTKVONotifying_Cat class]);
    
    // 把观察者（在这里就是ReactiveProgrammingViewController）保存到当前对象里
    
    // 添加关联
    // id object:给哪个对象添加关联属性
    // key:属性名
    // value:关联值
    objc_setAssociatedObject(self, @"observer", observer, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
