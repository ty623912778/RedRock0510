//
//  storyDetail.h
//  0510
//
//  Created by mac on 16/5/13.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface storyDetail : UIView
@property (weak, nonatomic) IBOutlet UILabel *username;
@property (weak, nonatomic) IBOutlet UILabel *time;
@property (weak, nonatomic) IBOutlet UILabel *content;
@property (weak, nonatomic) IBOutlet UILabel *chaping;
@property (weak, nonatomic) IBOutlet UILabel *tucao;
@property (weak, nonatomic) IBOutlet UILabel *dianzan;
@property (weak, nonatomic) IBOutlet UIView *DetailView;

@property (nonatomic, retain)NSDictionary *listDictionary;

+(instancetype)creatXib;
- (void)show;
- (void)close;
@end
