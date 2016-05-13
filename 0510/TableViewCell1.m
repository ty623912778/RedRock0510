//
//  TableViewCell1.m
//  PramaWells
//
//  Created by mac on 16/5/9.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "TableViewCell1.h"
@implementation TableViewCell1


@synthesize comment_author;
@synthesize comment_date;
@synthesize comment_content;
@synthesize vote_positive;
@synthesize vote_negative;
@synthesize text_content;

- (void)setText_content:(NSString *)textcontent
{
    if (![textcontent isEqualToString:text_content]) {
        text_content = [textcontent copy];
        self.tucao.text = text_content;
    }
}
- (void)setVote_positive:(NSString *)votepositive
{
    
    if (![votepositive isEqualToString:vote_positive]) {
        vote_positive = [votepositive copy];
        self.zan.text = vote_positive;
    }
}
- (void)setVote_negative:(NSString *)votenegative
{
    if (![votenegative isEqualToString:vote_negative]) {
        vote_negative = [votenegative copy];
        self.chaping.text = vote_negative;
    }
    
}
- (void)setComment_author:(NSString *)commentauthor
{
    
    if (![commentauthor isEqualToString:comment_author]) {
        comment_author = [commentauthor copy];
        self.user.text = comment_author;
    }
}
- (void)setComment_content:(NSString *)commentcontent
{
    
    if (![commentcontent isEqualToString:comment_content]) {
        comment_content = [commentcontent copy];
        self.content.text = comment_content;
    }
}
- (void)setComment_date:(NSString *)commentdata
{
    
    if (![commentdata isEqualToString:comment_date]) {
        comment_date = [commentdata copy];
        self.time.text = comment_date;
    }
}
- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
