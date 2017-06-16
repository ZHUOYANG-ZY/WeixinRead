//
//  ZYFindViewController.m
//  微信读书
//
//  Created by kede on 2017/6/15.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "ZYFindViewController.h"
#import "ZYScrollView.h"


@interface ZYFindViewController ()<UIScrollViewDelegate>
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
//    [self useScrollView];
    [self addScrollView];
    
    
}

- (void)addScrollView {
    ZYScrollView *view = [[ZYScrollView alloc] initWithFrame:CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT-49)];
//    view.scrollView.contentSize = CGSizeMake(35+20+ 15*2 + (SCREENWIDTH - 35*2)*2, SCREENHEIGHT-64-49-20);
    [self.view addSubview:view];
}

- (void)useScrollView {
    self.scrollView.delegate = self;
//    self.scrollView.backgroundColor = [UIColor orangeColor];
    self.scrollView.contentSize = CGSizeMake(35+20+ 15*2 + (SCREENWIDTH - 35*2)*2, SCREENHEIGHT-64-49);
//    self.scrollView.contentSize = CGSizeMake(SCREENWIDTH * 3, SCREENHEIGHT-64-49);
    self.scrollView.pagingEnabled = YES;
    NSLog(@"%f",self.scrollView.contentSize.width);
    
    for (int i=0; i<3; i++) {
        UIImageView *item = [[UIImageView alloc] init];
        item.backgroundColor = [UIColor whiteColor];
        item.frame = CGRectMake(10+SCREENWIDTH * i, 10, SCREENWIDTH-20, SCREENHEIGHT-64-49-20);
//        [self.scrollView addSubview:item];
    }
    //添加scrollview 图片
    for (int i=0; i < 2; i++) {
        UIImageView *item = [[UIImageView alloc] init];
        item.backgroundColor = [UIColor whiteColor];
//        if (i == 0) {
//            item.frame = CGRectMake(20+15, 10, SCREENWIDTH-35*2, SCREENHEIGHT-64-49-20);
//        } else
//        if(i==1) {
            item.frame = CGRectMake(20+15+(SCREENWIDTH-35*2)*i + 15*i, 10, SCREENWIDTH-35*2, SCREENHEIGHT-64-49-20);
//        }
        NSLog(@"%f",item.frame.origin.x);
        [self.scrollView addSubview:item];
        
    }
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



@end
