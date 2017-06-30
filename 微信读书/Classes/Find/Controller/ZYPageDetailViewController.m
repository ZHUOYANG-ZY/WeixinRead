//
//  ZYPageDetailViewController.m
//  微信读书
//
//  Created by kede on 2017/6/20.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "ZYPageDetailViewController.h"
#import "ZYPageDetailCell.h"

@interface ZYPageDetailViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

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
    
    self.tableView.estimatedRowHeight = 329;
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    
    [self.tableView registerNib:[UINib nibWithNibName: NSStringFromClass([ZYPageDetailCell class]) bundle:nil] forCellReuseIdentifier:@"ZYPageDetailCell"];
    
    
    
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



@end
