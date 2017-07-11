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
    
    [self.tableView registerNib:[UINib nibWithNibName: NSStringFromClass([ZYPageDetailCell class]) bundle:nil] forCellReuseIdentifier:@"ZYPageDetailCell"];
    
    self.dataArray = [[NSMutableArray alloc]init];
    
    for (int i=0; i<10; i++) {
        ZYPageDetailCellModel *model = [[ZYPageDetailCellModel alloc] init];
        model.commentTextString = @"舒婷说：“我很幸运，生长在这样一个南方岛屿，春夏秋冬，日日夜夜，与绿树鲜花呼吸与共”。鼓浪屿就是这样一个让人着迷的地方。";
        model.commentTextString1 = @"我很幸运，生长在这样一个南方岛屿，春夏秋冬，日日夜夜，与绿树鲜花呼吸与共”。鼓浪屿就是这样一个让人着迷的地方。";
        model.commentTextString2 = @"我很幸运，生长在这样一个南方岛屿，春夏秋冬，日日夜夜，与绿树鲜花呼吸与共”。鼓浪屿就是这样一个让人着迷的地方我很幸运，生长在这样一个南方岛屿，春夏秋冬。";
        [self.dataArray addObject:model];
    }
    //这样就可以把要计算的label文字内容传给model，通过调用model里属性来计算
    [self.tableView reloadData];
    
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ZYPageDetailCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ZYPageDetailCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.pageDetailModel = self.dataArray[indexPath.row];
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
    return model.cellHeight+ model.commentViewHeight;//model.cellHeight 会计算除评论试图外的高度；model.commentViewHeight 会计算评论试图高度；
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    
}

@end
