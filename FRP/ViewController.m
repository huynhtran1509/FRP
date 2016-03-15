//
//  ViewController.m
//  FRP
//
//  Created by 晓童 韩 on 16/3/15.
//  Copyright © 2016年 晓童 韩. All rights reserved.
//

#import "ViewController.h"
#import "ReactiveProgrammingViewController.h"
#import "FunctionalProgrammingViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)buttonDidClick:(UIButton *)button {
    
    switch (button.tag) {
        case 0: {
            ReactiveProgrammingViewController *vc = [[ReactiveProgrammingViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        case 1: {
            FunctionalProgrammingViewController *vc = [[FunctionalProgrammingViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            break;
        }
        default:
            break;
    }
}


@end
