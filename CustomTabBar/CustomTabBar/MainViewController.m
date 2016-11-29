//
//  MainViewController.m
//  CustomTabBar
//
//  Created by 曹文博 on 16/11/28.
//  Copyright © 2016年 曹文博. All rights reserved.
//

#import "MainViewController.h"
#import "CustomTabBar.h"

@interface MainViewController () <CustomTabBarDelegate>

@property (nonatomic, strong) NSMutableArray *viewArray;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    CustomTabBar *tabBar = [CustomTabBar tabBarWithTitles:@[@"first", @"second", @"third" ]];
    [tabBar setDelegate:self];
    [self.view addSubview:tabBar];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSMutableArray *)viewArray
{
    if (!_viewArray) {
        _viewArray = [NSMutableArray array];
        
        NSArray *classNameArray = @[@"FirstView", @"SecondView", @"ThirdView"];
        for(NSInteger i = 0; i < classNameArray.count; i++){
            UIView *view = [[NSClassFromString(classNameArray[i]) alloc]init];
            [self.view addSubview:view];        //将view添加到视图
            [_viewArray addObject:view];        //将view添加到数组中
        }
    }
    
    return _viewArray;
}


#pragma mark - Tab bar delegate - 

- (void)tabBar:(CustomTabBar *)tabBar itemSelectedAtIndex:(NSUInteger)index
{
    UIView *view = self.viewArray[index];       //从数组中取出当前点击的view
    [self.view bringSubviewToFront:view];       //把子视图带到最前方
    [self.view bringSubviewToFront:tabBar];     //把tabbar带到最前方
}

@end
