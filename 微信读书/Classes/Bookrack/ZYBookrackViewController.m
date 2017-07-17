//
//  ZYBookrackViewController.m
//  微信读书
//
//  Created by kede on 2017/6/15.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "ZYBookrackViewController.h"
#import "ZYBookCell.h"

@interface ZYBookrackViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation ZYBookrackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"书架";
    
    [self.collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([ZYBookCell class]) bundle:nil] forCellWithReuseIdentifier:@"ZYBookCell"];
    
    self.collectionView.contentInset = UIEdgeInsetsMake(20, 20, 20, 20);
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    self.collectionView.backgroundColor = [UIColor whiteColor];
    
    self.collectionView.collectionViewLayout = ({
        
        UICollectionViewFlowLayout *layout = [[UICollectionViewFlowLayout alloc] init];
        layout.itemSize = CGSizeMake((SCREENWIDTH- 20*4)/3.0, (SCREENWIDTH- 20*4)/3.0 * 211/123);
        layout.minimumLineSpacing = 20;
        layout.minimumInteritemSpacing = 0;
        layout;
    });

}


- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 20;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ZYBookCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"ZYBookCell" forIndexPath:indexPath];
    return cell;
}


@end
