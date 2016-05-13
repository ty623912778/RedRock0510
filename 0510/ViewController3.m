//
//  ViewController3.m
//  PramaWells
//
//  Created by mac on 16/5/10.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController3.h"
#import "TYShareView.h"
#import "TYLoginView.h"

@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];

    

}
- (IBAction)touch1:(id)sender {
    TYLoginView *login = [TYLoginView creatXib];
    
    [login show];
}
- (IBAction)touch:(id)sender {

  

   TYShareView  *share = [TYShareView creatXib];
    [share setGetTouch:^(int tag) {
        [self getTag:tag];
    }];
    [share show];

}

- (void)getTag:(int)tag
{
    
    UIAlertView * alert = [[UIAlertView alloc]initWithTitle:nil message:[NSString stringWithFormat:@"点击第%d个按钮",tag] delegate:self cancelButtonTitle:@"取消" otherButtonTitles:nil, nil];
    [alert show];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
