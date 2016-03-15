//
//  Calculator.h
//  FRP
//
//  Created by 晓童 韩 on 16/3/15.
//  Copyright © 2016年 晓童 韩. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

@property (nonatomic, assign) int result;

@property (nonatomic, assign) BOOL isEqual;

- (instancetype)add:(int(^)(int result))block;

- (instancetype)equal:(BOOL(^)(int result))block;

@end
