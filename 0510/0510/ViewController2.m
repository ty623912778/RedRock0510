//
//  ViewController2.m
//  PramaWells
//
//  Created by mac on 16/5/9.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController2.h"
#import"PictureTableViewCell.h"
#import "girlDetail.h"
#define pictureUrl @"http://jandan.net/?oxwlxojflwblxbsapi=jandan.get_ooxx_comments&page=1"

#define CellIdentifier @"picture"

@interface ViewController2 ()
{
    NSMutableArray *_dataSource;
    NSDictionary *dic2;
    
}
//@property(assign,nonatomic) BOOL nibsRegistered;

@end

@implementation ViewController2



- (void)viewDidLoad {
    [super viewDidLoad];
   // _nibsRegistered=NO;
    _dataSource=[NSMutableArray new];
    self.tableView.rowHeight=400;
    NSURL *URL = [NSURL URLWithString:pictureUrl];
    NSURLRequest *request1 = [NSURLRequest requestWithURL:URL cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:100.0];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request1 completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error == nil){
            NSMutableDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
          //  NSLog(@"%@",dic);
            _dataSource = [dic objectForKey:@"comments"];
            [self.tableView reloadData];
            
            
        }
    }];
    [task resume];
    
  //  [[NSBundle mainBundle] loadNibNamed:@"PictureTableViewCell" owner:self options:nil];
    
}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataSource.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    PictureTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        
        cell= [[NSBundle mainBundle] loadNibNamed:@"PictureTableViewCell" owner:self options:nil].firstObject;
    }
    
    
    dic2 = [_dataSource objectAtIndex:indexPath.row];
    cell.author.text = dic2[@"comment_author"];
    cell.date.text =dic2[@"comment_date"];
    cell.picture.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[[dic2 objectForKey:@"pics"]objectAtIndex:0]]]];
    cell.dianzan.text = dic2[@"vote_positive"];
    cell.chaping.text = dic2[@"vote_negative"];
    cell.textContent.text = dic2[@"comment_reply_ID"];
    NSLog(@"%@",dic2);
    
    return cell;
    
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    girlDetail *detail = [girlDetail creatXib];
    detail.listDictionary = dic2;
    detail.girlPicture.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:[[dic2 objectForKey:@"pics"]objectAtIndex:0]]]];

    
    [detail show];
    
}

@end
