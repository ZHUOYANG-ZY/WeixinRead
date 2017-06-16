//
//  ZYTabBarViewController.m
//  微信读书
//
//  Created by kede on 2017/6/15.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "ZYTabBarViewController.h"
#import "ZYNavigationViewController.h"


@interface ZYTabBarViewController ()<UITabBarControllerDelegate>

@end

@implementation ZYTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self configureTabBar];
    
    // configure viewcontrollers
    [self configureViewControllers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)configureTabBar {
    self.delegate = self;
    self.tabBar.tintColor = RGBColor(64, 136, 231);
    [[UITabBarItem appearance] setTitleTextAttributes:@{UIFontDescriptorTextStyleAttribute:[UIFont systemFontOfSize:13]} forState:UIControlStateNormal];
    
    [[UITabBar appearance] setBarTintColor:[UIColor whiteColor]];
    [UITabBar appearance].translucent = NO;
    
//    self.tabBar.backgroundColor = [UIColor whiteColor];
}

- (void)configureViewControllers {
//    NSMutableArray *viewControllers = [self.navigationController.viewControllers mutableCopy];
    NSMutableArray<UINavigationController *> *viewControllers = @[].mutableCopy;
    
    NSArray *items = @[
                       @{
                           @"boardName":@"Find",
                           @"title":@"发现",
                           @"imageName":@"find"},
                       @{
                           @"boardName":@"Bookrack",
                           @"title":@"书架",
                           @"imageName":@"bookrack"},
                       @{
                           @"boardName":@"Idea",
                           @"title":@"想法",
                           @"imageName":@"idea"},
                       @{
                           @"boardName":@"My",
                           @"title":@"我",
                           @"imageName":@"my"},
                       ];
    
    for (NSInteger i=0; i<items.count; i++) {
        NSDictionary *dict = items[i];
        ZYNavigationViewController *nav = [self navigationViewControllerWithStoryBoardName:dict[@"boardName"]
                                                                                     title:dict[@"title"]
                                                                                 imageName:dict[@"imageName"]];
        nav.tabBarItem.tag = i;
    
        [viewControllers addObject:nav];
    }
    self.viewControllers = [viewControllers copy];
    
}

- (ZYNavigationViewController *)navigationViewControllerWithStoryBoardName:(NSString *)boardName title:(NSString *)title imageName:(NSString *)imageName {
    
    UIStoryboard *board = [UIStoryboard storyboardWithName:boardName bundle:nil];
    ZYNavigationViewController *nav = (ZYNavigationViewController *)[board instantiateInitialViewController];
    nav.title = title;

    nav.tabBarItem.image = [[UIImage imageNamed:[NSString stringWithFormat:@"tab_%@", imageName]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    nav.tabBarItem.selectedImage = [[UIImage imageNamed:[NSString stringWithFormat:@"tab_select_%@",imageName]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    return nav;
}
@end
