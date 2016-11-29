//
//  SecondView.m
//  CustomTabBar
//
//  Created by 曹文博 on 16/11/29.
//  Copyright © 2016年 曹文博. All rights reserved.
//

#import "SecondView.h"

@implementation SecondView

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        [self setBackgroundColor:[UIColor greenColor]];
    }
    
    return self;
}

- (void)willMoveToSuperview:(UIView *)newSuperview
{
    [self setFrame:newSuperview.bounds];
}


@end
