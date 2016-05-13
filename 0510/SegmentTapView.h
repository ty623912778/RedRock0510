//
//  SegmentTapView.h
//  PramaWells
//
//  Created by mac on 16/5/9.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SegmentTapViewDelegate <NSObject>
@optional

-(void)selectedIndex:(NSInteger)index;
@end

@interface SegmentTapView : UIView

@property (nonatomic, assign)id<SegmentTapViewDelegate> delegate;

@property (nonatomic, strong)NSArray *dataArray;

@property (nonatomic, strong)UIColor *textNomalColor;

@property (nonatomic, strong)UIColor *textSelectedColor;

@property (nonatomic, strong)UIColor *lineColor;

@property (nonatomic, assign)CGFloat titleFont;

-(instancetype)initWithFrame:(CGRect)frame withDataArray:(NSArray *)dataArray withFont:(CGFloat)font;

-(void)selectIndex:(NSInteger)index;



@end
