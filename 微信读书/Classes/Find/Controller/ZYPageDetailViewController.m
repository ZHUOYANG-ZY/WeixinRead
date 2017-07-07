//
//  ZYPageDetailViewController.m
//  微信读书
//
//  Created by kede on 2017/6/20.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "ZYPageDetailViewController.h"
#import "ZYPageDetailCell.h"
#import "ZYPageDetailCellModel.h"

@interface ZYPageDetailViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *dataArray;
@end

@implementation ZYPageDetailViewController


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
\
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    // Do any additional setup after loading the view.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
//    self.tableView.estimatedRowHeight = 329;
//    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    [self.tableView registerNib:[UINib nibWithNibName: NSStringFromClass([ZYPageDetailCell class]) bundle:nil] forCellReuseIdentifier:@"ZYPageDetailCell"];
    
    self.dataArray = [[NSMutableArray alloc]init];
    
    for (int i=0; i<10; i++) {
        ZYPageDetailCellModel *model = [[ZYPageDetailCellModel alloc] init];
        model.commentTextString = @"舒婷说：“我很幸运，生长在这样一个南方岛屿，春夏秋冬，日日夜夜，与绿树鲜花呼吸与共”。鼓浪屿就是这样一个让人着迷的地方。";
        model.commentTextString1 = @"我很幸运，生长在这样一个南方岛屿，春夏秋冬，日日夜夜，与绿树鲜花呼吸与共”。鼓浪屿就是这样一个让人着迷的地方。";
        model.commentTextString2 = @"我很幸运，生长在这样一个南方岛屿，春夏秋冬，日日夜夜，与绿树鲜花呼吸与共”。鼓浪屿就是这样一个让人着迷的地方。";
        [self.dataArray addObject:model];
    }
    
    [self.tableView reloadData];
    
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 10;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ZYPageDetailCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ZYPageDetailCell" forIndexPath:indexPath];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    if (section == 9) {
        return 0.1f;
    } else {
        return 10;
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    ZYPageDetailCellModel *model = self.dataArray[indexPath.section];
    NSLog(@"ceh -- %f",model.cellHeight);
    return model.cellHeight;
}


@end
