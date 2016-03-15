//
//  Calculator.m
//  FRP
//
//  Created by 晓童 韩 on 16/3/15.
//  Copyright © 2016年 晓童 韩. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator

- (instancetype)add:(int (^)(int result))block {
    self.result = block(self.result);
    return self;
}

- (instancetype)equal:(BOOL (^)(int))block {
    self.isEqual = block(self.result);
    return self;
}

@end
