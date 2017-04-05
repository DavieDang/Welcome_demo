//
//  SelectWeekViewModel.m
//  淡入淡出demo
//
//  Created by admin on 2017/3/17.
//  Copyright © 2017年 com.gz.bingoMobileSchools. All rights reserved.
//

#import "SelectWeekViewModel.h"
#import "SelectWeekModel.h"
#import "UICollectionViewCell+MSCollectionCellConfigure.h"


@implementation SelectWeekViewModel

-(NSArray *)dataArr{
    if (!_dataArr) {
       
        NSMutableArray *arr  = [NSMutableArray array];
        SelectWeekModel *model = [[SelectWeekModel alloc] init];
        model.weekTitle = @"第几周";
        model.imageView = nil;
        model.currentWeek = @"当前周";
        [arr addObject:model];
        _dataArr = [NSArray arrayWithArray:[arr copy]];
    }
    return _dataArr;
}

- (SelectWeekModel *)modelForDataArr:(NSIndexPath *)row{
    
    return self.dataArr[row.row];
}


//-(NSString *)weekTitleForRow:(NSIndexPath *)row{
//    return [self modelForDataArr:row].weekTitle;
//}

//-(NSString *)thisWeekForRow:(NSInteger)row{
//    return [self modelForDataArr:row].currentWeek;
//    
//}
//
//-(UIImageView *)imgeViewForRow:(NSInteger)row{
//    return [self modelForDataArr:row].imageView;
//}


-(void)handleWithTable:(UICollectionView *)collectView{
    
    collectView.delegate = self;
    collectView.dataSource = self;
    [UICollectionViewCell ms_registerCollectView:collectView withClassName:[SelectWeekModel class] nibIdentifier:@"mycell"];
    
}


-(void)getDataWithModelArray:(Completion)completion{
    
    completion(self.dataArr,nil);
    
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
    return 10;
}

// The cell that is returned must be retrieved from a call to -dequeueReusableCellWithReuseIdentifier:forIndexPath:
- (__kindof UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    id item = [self modelForDataArr:indexPath];
    
    
    
    return [collectionView ms]
    
}



@end
