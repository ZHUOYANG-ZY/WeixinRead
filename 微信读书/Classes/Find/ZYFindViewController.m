//
//  ZYFindViewController.m
//  微信读书
//
//  Created by kede on 2017/6/15.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "ZYFindViewController.h"
#import "ZYScrollView.h"
#import "ZYPageView.h"


@interface ZYFindViewController ()<UIScrollViewDelegate,ZYPageViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ZYFindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
//    self.title = @"发现";
    self.view.backgroundColor = RGBColor(244, 245, 247);
    
    /*两种方法
     1.旋转 tableview
     2.使用 scrollview
     */
    [self addScrollView];
    
    
}

- (void)addScrollView {
    ZYScrollView *view = [[ZYScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT-49)];
    view.pageView.delegate = self;
    [view addScrollView:10];
    [view addImageView:10];
    [self.view addSubview:view];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:[UIImage new]];
}

- (void)viewWillDisappear:(BOOL)animated {
    [self.navigationController.navigationBar setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:nil];
}

#pragma mark - delegate method

- (void)clickPagePushToDetailView:(NSInteger)sender {
    NSLog(@" sender -- %ld",sender);
}

@end
