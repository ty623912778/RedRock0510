//
//  FlipTableView.h
//  PramaWells
//
//  Created by mac on 16/5/9.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol FlipTableViewDelegate <NSObject>

-(void)scrollChangeToIndex:(NSInteger)index;
@end

@interface FlipTableView : UIView<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>
@property (nonatomic,strong)UITableView *tableView;

@property (nonatomic,strong)NSMutableArray *dataArray;

@property (nonatomic,assign)id<FlipTableViewDelegate> delegate;

-(instancetype)initWithFrame:(CGRect)frame withArray:(NSArray *)contentArray;

-(void)selectIndex:(NSInteger)index;
@end
