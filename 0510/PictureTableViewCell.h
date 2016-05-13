
//
//  PictureTableViewCell.h
//  PramaWells
//
//  Created by mac on 16/5/9.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>


//http://jandan.net/?oxwlxojflwblxbsapi=jandan.get_ooxx_comments&page=1
@interface PictureTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *author;
@property (weak, nonatomic) IBOutlet UILabel *date;
@property (weak, nonatomic) IBOutlet UIImageView *picture;//pics
@property (weak, nonatomic) IBOutlet UILabel *dianzan;
@property (weak, nonatomic) IBOutlet UILabel *chaping;
@property (weak, nonatomic) IBOutlet UILabel *textContent;


@property(copy,nonatomic) NSString * comment_author;
@property(copy,nonatomic) NSString * comment_date;
@property(copy,nonatomic) NSString * pics;
@property(copy,nonatomic) NSString * vote_positive;
@property(copy,nonatomic) NSString * vote_negative;
@property(copy,nonatomic) NSString * comment_reply_ID;

@end
