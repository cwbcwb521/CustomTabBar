//
//  CustomTabBar.m
//  CustomTabBar
//
//  Created by 曹文博 on 16/11/28.
//  Copyright © 2016年 曹文博. All rights reserved.
//

#import "CustomTabBar.h"
#import "CustomTabBarItem.h"


static const CGFloat TabBarHeight = 44;

@interface CustomTabBar()

@property (nonatomic, strong) NSArray *titles;
@property (nonatomic, weak) CustomTabBarItem *preSelectedItem;

- (void)addItems;

@end

@implementation CustomTabBar

+ (instancetype)tabBarWithTitles:(NSArray *)titles
{
    CustomTabBar *tabBar = [[self alloc] init];
    [tabBar setBackgroundColor:[UIColor lightGrayColor]];
    
    [tabBar setTitles:titles];
    
    return tabBar;
}

- (void)addItems
{
    CGFloat itemCount = self.titles.count;
    CGFloat itemWidth = CGRectGetWidth(self.bounds) / itemCount;
    CGFloat itemHeight = CGRectGetHeight(self.bounds);
    
    for (NSInteger i = 0; i < itemCount; i++){
        CustomTabBarItem *item = [CustomTabBarItem itemWithFrame:CGRectMake(itemWidth * i, 0, itemWidth, itemHeight) title:self.titles[i]];
        
        [item setTag:i + 1];
        [self addSubview:item];
        
        //item点击事件
        [item addTarget:self action:@selector(itemSelected:) forControlEvents:UIControlEventTouchUpInside];
    }
}

#pragma mark - Action -

- (void)itemSelected:(CustomTabBarItem *)sender
{
    if(sender == self.preSelectedItem){
        return;
    }
    [self.preSelectedItem setSelected:NO];
    [sender setSelected:YES];
    
    [self.delegate tabBar:self itemSelectedAtIndex:sender.tag - 1];
    
    [self setPreSelectedItem:sender];
}

#pragma mark - Override -
- (void)willMoveToSuperview:(UIView *)newSuperview
{
    [self setFrame:CGRectMake(0, CGRectGetMaxY(newSuperview.frame) - TabBarHeight, CGRectGetWidth(newSuperview.frame), TabBarHeight)];
    [self addItems];
    
    CustomTabBarItem *item = [self viewWithTag:1];
    
    [self itemSelected:item];
    [self setPreSelectedItem:item];
}

@end
