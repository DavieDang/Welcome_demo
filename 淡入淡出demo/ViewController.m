//
//  ViewController.m
//  淡入淡出demo
//
//  Created by admin on 2017/3/16.
//  Copyright © 2017年 com.gz.bingoMobileSchools. All rights reserved.
//

#import "ViewController.h"
#import <MJRefresh.h>
#import "Masonry.h"
#import "SelectWeekCell.h"
#import "SelectWeekViewModel.h"

static NSString *const Identifier = @"ListCell";
#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define Screenheight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()<UICollectionViewDelegate,UICollectionViewDataSource>

//@property (nonatomic,strong) UITableView *tableView;

@property (nonatomic,strong) UICollectionView *collectiongView;

@property (nonatomic,strong)SelectWeekViewModel *viewModel;


@end

@implementation ViewController

- (SelectWeekViewModel *)viewModel{
    if (!_viewModel) {
        _viewModel = [[SelectWeekViewModel alloc] init];
    }
    return _viewModel;
}


- (void)setCollectViewUI{
    
    UICollectionViewFlowLayout *flowLayout = [[UICollectionViewFlowLayout alloc] init];
    flowLayout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    flowLayout.itemSize = CGSizeMake(ScreenWidth/7, 200);
    flowLayout.minimumLineSpacing = 5;
    flowLayout.minimumInteritemSpacing = 5;
    self.collectiongView = [[UICollectionView alloc] initWithFrame:CGRectZero collectionViewLayout:flowLayout];
    self.collectiongView.backgroundColor = [UIColor clearColor];
    
    [self.view addSubview:self.collectiongView];
    [self.collectiongView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(100);
        make.left.right.mas_equalTo(0);
        make.bottom.mas_equalTo(-200);
    }];
    
//    self.collectiongView.pagingEnabled = YES;
    self.collectiongView.alwaysBounceHorizontal = NO;
    self.collectiongView.contentSize = CGSizeMake(10*ScreenWidth/7, Screenheight - 300);
    
    [self.viewModel handleWithTable:self.collectiongView];
    [self.viewModel getdatawithcomp:^(NSArray *dataArr, NSError *error) {
        [self.collectiongView reloadData];
    }];
    
    
//    [self.collectiongView registerClass:[SelectWeekCell class] forCellWithReuseIdentifier:@"musicCell"];
//    self.collectiongView.delegate = self;
//    self.collectiongView.dataSource = self;
    
}



- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self setCollectViewUI];
}





- (void)test{
    [self dismissViewControllerAnimated:YES completion:nil];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

