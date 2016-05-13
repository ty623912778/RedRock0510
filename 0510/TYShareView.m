//
//  TYShareView.m
//  PramaWells
//
//  Created by mac on 16/5/10.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "TYShareView.h"
@implementation TYShareView
- (void)awakeFromNib
{
    self.frame = [[UIScreen mainScreen] bounds];
    self.backgroundColor = [[UIColor blackColor]colorWithAlphaComponent:0.3];
    self.ShareView.frame = CGRectMake(0, self.frame.size.height, self.frame.size.width,200 );
    
}

+(instancetype)creatXib
{
    return [[[NSBundle mainBundle] loadNibNamed:@"TYShareView" owner:nil options:nil] lastObject];
}

- (void)show
{
    [[UIApplication sharedApplication].keyWindow.rootViewController.view addSubview:self];
    [UIView animateWithDuration:0.3f animations:^{
        self.ShareView.frame = CGRectMake(0, self.frame.size.height - 200, self.frame.size.width, 200);
    }completion:^(BOOL finished) {
        
    }];
}

- (void)close
{
    [UIView animateWithDuration:0.3f animations:^{
        self.ShareView.frame = CGRectMake(0, self.frame.size.height, self.frame.size.width, 200);
    } completion:^(BOOL finished) {
        [self removeFromSuperview];
    }];
}
- (IBAction)TYCancel:(UIButton *)sender {
    [self close];
}
- (IBAction)touchBut:(UIButton *)sender {
    self.getTouch((int)sender.tag);
    [self close];
}


@end
