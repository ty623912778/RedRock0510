
//
//  PictureTableViewCell.m
//  PramaWells
//
//  Created by mac on 16/5/9.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "PictureTableViewCell.h"

@implementation PictureTableViewCell

@synthesize comment_author;
@synthesize comment_date;
@synthesize pics;
@synthesize vote_positive;
@synthesize vote_negative;
@synthesize comment_reply_ID;

- (void)setPics:(NSString *)picture
{
    if (![picture isEqualToString:pics]) {
        pics = [picture copy];
        
        self.picture.image = [UIImage imageNamed:pics];
    }
}

- (void)setComment_reply_ID:(NSString *)textcontent
{
    if (![textcontent isEqualToString:comment_reply_ID]) {
        comment_reply_ID = [textcontent copy];
        self.textContent.text = comment_reply_ID;
    }
}
- (void)setVote_positive:(NSString *)votepositive
{
    
    if (![votepositive isEqualToString:vote_positive]) {
        vote_positive = [votepositive copy];
        self.dianzan.text = vote_positive;
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
        self.author.text = comment_author;
    }
}

- (void)setComment_date:(NSString *)commentdata
{
    
    if (![commentdata isEqualToString:comment_date]) {
        comment_date = [commentdata copy];
        self.date.text = comment_date;
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
