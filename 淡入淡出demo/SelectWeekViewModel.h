//
//  SelectWeekViewModel.h
//  淡入淡出demo
//
//  Created by admin on 2017/3/17.
//  Copyright © 2017年 com.gz.bingoMobileSchools. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SelectWeekModel.h"

typedef void(^Completion)(NSArray *dataArr,NSError *error);



@interface SelectWeekViewModel : NSObject<UICollectionViewDelegate,UICollectionViewDataSource>


@property (nonatomic, strong) NSArray *dataArr;



-(NSString *)weekTitleForRow:(NSIndexPath *)row;
-(NSString *)thisWeekForRow:(NSInteger)row;
-(UIImageView *)imgeViewForRow:(NSInteger)row;


- (void)handleWithTable:(UICollectionView *)collectView;

-(void)getdatawithcomp:(Completion)completion;


@end
