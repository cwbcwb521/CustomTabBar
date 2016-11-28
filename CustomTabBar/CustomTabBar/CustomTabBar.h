//
//  CustomTabBar.h
//  CustomTabBar
//
//  Created by 曹文博 on 16/11/28.
//  Copyright © 2016年 曹文博. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomTabBar;

@protocol CustomTabBarDelegate <NSObject>

- (void)tabBar:(CustomTabBar *)tabBar itemSelectedAtIndex:(NSUInteger)index;

@end


@interface CustomTabBar : UIView

+(instancetype)tabBarWithTitles:(NSArray *)titles;

@property (nonatomic, weak) id<CustomTabBarDelegate> delegate;

@end
