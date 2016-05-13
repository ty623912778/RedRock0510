//
//  TableViewCell1.h
//  PramaWells
//
//  Created by mac on 16/5/9.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell1 : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *user;//comment_author
@property (weak, nonatomic) IBOutlet UILabel *time;//comment_date
@property (weak, nonatomic) IBOutlet UILabel *content;//comment_content
@property (weak, nonatomic) IBOutlet UILabel *zan;//vote_positive
@property (weak, nonatomic) IBOutlet UILabel *chaping;//vote_negative
@property (weak, nonatomic) IBOutlet UILabel *tucao;//text_content

@property(copy,nonatomic) NSString * comment_author;
@property(copy,nonatomic) NSString * comment_date;
@property(copy,nonatomic) NSString * comment_content;
@property(copy,nonatomic) NSString * vote_positive;
@property(copy,nonatomic) NSString * vote_negative;
@property(copy,nonatomic) NSString * text_content;

@end
