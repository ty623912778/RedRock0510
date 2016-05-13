//
//  girlDetail.h
//  0510
//
//  Created by mac on 16/5/13.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface girlDetail : UIView
@property (weak, nonatomic) IBOutlet UIView *girlView;
@property (weak, nonatomic) IBOutlet UIImageView *girlPicture;
@property (nonatomic, retain)NSDictionary *listDictionary;


+(instancetype)creatXib;
- (void)show;
- (void)close;
@end
