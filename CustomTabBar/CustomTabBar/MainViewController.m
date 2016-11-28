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

@property (nonatomic, strong) UILabel *label;

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self setLabel:[[UILabel alloc]initWithFrame:CGRectMake(100, 100, 150, 150)]];
    [self.label setBackgroundColor:[UIColor whiteColor]];
    [self.label setText:@"oc"];
    [self.view addSubview:self.label];
    
    CustomTabBar *tabBar = [CustomTabBar tabBarWithTitles:@[@"first", @"second", @"third" ]];
    [tabBar setDelegate:self];
    [self.view addSubview:tabBar];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Tab bar delegate - 

- (void)tabBar:(CustomTabBar *)tabBar itemSelectedAtIndex:(NSUInteger)index
{
    [self.label setText:[NSString stringWithFormat:@"%zd", index]];
}

@end
