//
//  girlDetail.m
//  0510
//
//  Created by mac on 16/5/13.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "girlDetail.h"
#import "ViewController2.h"
#import "PictureTableViewCell.h"


@implementation girlDetail


- (void)awakeFromNib
{
    self.frame = [[UIScreen mainScreen] bounds];
    self.backgroundColor = [[UIColor blackColor]colorWithAlphaComponent:0.3];
    self.girlView.frame = CGRectMake(0, self.frame.size.height, self.frame.size.width,200 );
    
}

+(instancetype)creatXib
{
    return [[[NSBundle mainBundle] loadNibNamed:@"girlDetail" owner:nil options:nil] lastObject];
}

- (void)show
{
    [[UIApplication sharedApplication].keyWindow.rootViewController.view addSubview:self];
    [UIView animateWithDuration:0.3f animations:^{
        self.girlView.frame = CGRectMake(0, self.frame.size.height - 200, self.frame.size.width, 200);
    }completion:^(BOOL finished) {
        
    }];
}

- (void)close
{
    [UIView animateWithDuration:0.3f animations:^{
        self.girlView.frame = CGRectMake(0, self.frame.size.height, self.frame.size.width, 200);
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}
- (IBAction)TYCancel:(UIButton *)sender {
    [self close];
}
@end
