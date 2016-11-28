//
//  CustomTabBarItem.m
//  CustomTabBar
//
//  Created by 曹文博 on 16/11/28.
//  Copyright © 2016年 曹文博. All rights reserved.
//

#import "CustomTabBarItem.h"

@implementation CustomTabBarItem

+ (instancetype)itemWithFrame:(CGRect)frame title:(NSString *)title
{
    CustomTabBarItem *item = [self buttonWithType:UIButtonTypeCustom];
    
    [item setFrame:frame];
    [item setBackgroundImage:[UIImage imageNamed:@"1"] forState:UIControlStateNormal];
    [item setBackgroundImage:[UIImage imageNamed:@"2"] forState:UIControlStateSelected];
    [item setTitle:title forState:UIControlStateNormal];
    [item setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [item.titleLabel setFont:[UIFont systemFontOfSize:17]];
    
    return item;
}

@end
