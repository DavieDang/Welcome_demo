//
//  UICollectionViewCell+MSCollectionCellConfigure.m
//  淡入淡出demo
//
//  Created by admin on 2017/3/23.
//  Copyright © 2017年 com.gz.bingoMobileSchools. All rights reserved.
//

#import "UICollectionViewCell+MSCollectionCellConfigure.h"

@implementation UICollectionViewCell (MSCollectionCellConfigure)



+(void)ms_registerCollectView:(UICollectionView *)collectView withClassName:(Class)cellClass nibIdentifier:(NSString *)identifier{
    
    [collectView registerClass:[cellClass class] forCellWithReuseIdentifier:identifier];
}

-(void)configureCell:(UICollectionViewCell *)cell model:(id)model indexPath:(NSIndexPath *)indexPath{
    
}

@end
