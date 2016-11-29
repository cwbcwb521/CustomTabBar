//
//  ThirdView.m
//  CustomTabBar
//
//  Created by 曹文博 on 16/11/29.
//  Copyright © 2016年 曹文博. All rights reserved.
//

#import "ThirdView.h"

@implementation ThirdView

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        [self setBackgroundColor:[UIColor orangeColor]];
    }
    
    return self;
}

- (void)willMoveToSuperview:(UIView *)newSuperview
{
    [self setFrame:newSuperview.bounds];
}


@end
