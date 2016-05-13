//
//  TYShareView.h
//  PramaWells
//
//  Created by mac on 16/5/10.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TYShareView : UIView
@property (weak, nonatomic) IBOutlet UIView *ShareView;

@property (nonatomic, strong)void (^getTouch)(int ButTag);

+(instancetype)creatXib;
- (void)show;
- (void)close;



@end
