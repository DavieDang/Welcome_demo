//
//  SelectWeekCell.m
//  淡入淡出demo
//
//  Created by admin on 2017/3/17.
//  Copyright © 2017年 com.gz.bingoMobileSchools. All rights reserved.
//

#import "SelectWeekCell.h"
#import "Masonry.h"
#import "SelectWeekModel.h"
#import "UICollectionViewCell+MSCollectionCellConfigure.h"

@implementation SelectWeekCell

- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self setUI];
    }
    return self;
}


- (void)setUI{
    
    UILabel *weekTitle = [[UILabel alloc] init];
    [self.contentView addSubview:weekTitle];
    [weekTitle mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.mas_equalTo(self.contentView);
    }];
    self.weekTitle = weekTitle;
    
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.backgroundColor = [UIColor blueColor];
    [imageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(50, 50));
        make.top.mas_equalTo(weekTitle.mas_bottom).offset(5);
    }];
    
    self.imageView = imageView;
    
    UILabel *thisWeek = [[UILabel alloc] init];
    [self.contentView addSubview:thisWeek];
    [thisWeek mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(imageView.mas_bottom).offset(5);
        make.centerX.mas_equalTo(self.contentView);
    }];
    self.thisWeek = thisWeek;
    
}





-(void)configureCell:(UICollectionViewCell *)cell model:(id)model indexPath:(NSIndexPath *)indexPath{
    
    SelectWeekModel *weekModel = (SelectWeekModel *)model;
    self.weekTitle.text = weekModel.weekTitle;
    self.thisWeek.text = weekModel.currentWeek;
    self.imageView = weekModel.imageView;
}


@end
