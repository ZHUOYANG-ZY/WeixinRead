//
//  ZYIdeaViewController.m
//  微信读书
//
//  Created by kede on 2017/6/15.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "ZYIdeaViewController.h"
#import "ZYIdeaDeatliCell.h"
#import "ZYIdeaDetailCellModel.h"

@interface ZYIdeaViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray *dataArray;
@end

@implementation ZYIdeaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"想法";
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    self.tableView.delegate  =self;
    self.tableView.dataSource = self;
    
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([ZYIdeaDeatliCell class]) bundle:nil] forCellReuseIdentifier:@"ZYIdeaDeatliCell"];
    
    self.dataArray = [[NSMutableArray alloc]init];
    for (int i=0; i<5; i++) {
        ZYIdeaDetailCellModel *model = [[ZYIdeaDetailCellModel alloc] init];
        model.commentTextString = @"舒婷说：“我很幸运，生长在这样一个南方岛屿，春夏秋冬，日日夜夜，与绿树鲜花呼吸与共”。鼓浪屿就是这样一个让人着迷的地方。";
        model.commentTextString1 = @"我很幸运，生长在这样一个南方岛屿，春夏秋冬，日日夜夜，与绿树鲜花呼吸与共”。鼓浪屿就是这样一个让人着迷的地方。鼓浪屿就是这样一个让人着迷的地方";
        model.commentTextString2 = @"我很幸运，生长在这样一个南方岛屿，春夏秋冬，日日夜夜，与绿树鲜花呼吸与共”。鼓浪屿就是这样一个让人着迷的地方我很幸运，生长在这样一个南方岛屿，春夏秋冬。";
        [self.dataArray addObject:model];
    }
    //这样就可以把要计算的label文字内容传给model，通过调用model里属性来计算
    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.dataArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ZYIdeaDeatliCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ZYIdeaDeatliCell" forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    cell.ideaDetailModel = self.dataArray[indexPath.section];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    ZYIdeaDetailCellModel *model = self.dataArray[indexPath.section];
    NSLog(@"idea -- cellheight %f commentheight %f",model.cellHeight,model.commentViewHeight);
    return model.cellHeight + model.commentViewHeight;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    if (section == 0) {
        return 0.1f;
    }else{
        return 10;
    }
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0.1f;
}
@end
