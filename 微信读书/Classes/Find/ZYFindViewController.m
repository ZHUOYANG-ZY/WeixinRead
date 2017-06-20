//
//  ZYFindViewController.m
//  微信读书
//
//  Created by kede on 2017/6/15.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "ZYFindViewController.h"
#import "ZYPageDetailViewController.h"
#import "ZYScrollView.h"
#import "ZYPageView.h"


@interface ZYFindViewController ()<UIScrollViewDelegate,ZYScrollViewDelegate>
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
    ZYScrollView *sview = [[ZYScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT-49)];
    sview.delegate = self;
    [sview addScrollView:10];
    [sview addImageView:10];
    [self.view addSubview:sview];
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
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Find" bundle:nil];
    ZYPageDetailViewController *pagedetailVC = [story instantiateViewControllerWithIdentifier:@"ZYPageDetailViewController"];
    [self.navigationController pushViewController:pagedetailVC animated:YES];
}

@end
