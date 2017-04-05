//
//  UICollectionViewCell+MSCollectionCellConfigure.h
//  淡入淡出demo
//
//  Created by admin on 2017/3/23.
//  Copyright © 2017年 com.gz.bingoMobileSchools. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UICollectionViewCell (MSCollectionCellConfigure)


+(void)ms_registerCollectView:(UICollectionView *)collectView withClassName:(Class)cellClass nibIdentifier:(NSString *)identifier;

-(void)configureCell:(UICollectionViewCell *)cell model:(id)model indexPath:(NSIndexPath *)indexPath;


@end
