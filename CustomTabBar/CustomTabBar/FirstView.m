//
//  FirstView.m
//  CustomTabBar
//
//  Created by 曹文博 on 16/11/29.
//  Copyright © 2016年 曹文博. All rights reserved.
//

#import "FirstView.h"

@implementation FirstView

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        [self setBackgroundColor:[UIColor blueColor]];
    }
    
    return self;
}

- (void)willMoveToSuperview:(UIView *)newSuperview
{
    [self setFrame:newSuperview.bounds];
}

@end
