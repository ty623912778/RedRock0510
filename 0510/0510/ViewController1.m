//
//  ViewController1.m
//  PramaWells
//
//  Created by mac on 16/5/9.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController1.h"
#import "TableViewCell1.h"
#import "storyDetail.h"
#define duanziurl @"http://jandan.net/?oxwlxojflwblxbsapi=jandan.get_duan_comments&page=1"

#define CellIdentifier @"duanzi"

@interface ViewController1 ()
{
    NSMutableArray *_dataSource;
    NSDictionary *dic2;

}
@property(assign,nonatomic) BOOL nibsRegistered;


@end

@implementation ViewController1


- (void)viewDidLoad {
    [super viewDidLoad];
    _nibsRegistered=NO;
    _dataSource=[NSMutableArray new];
    self.tableView.rowHeight=200;
    NSURL *URL = [NSURL URLWithString:duanziurl];
    //构建不可变请求
    NSURLRequest *request1 = [NSURLRequest requestWithURL:URL cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:100.0];
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithRequest:request1 completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        if (error == nil){
            NSMutableDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
            
            _dataSource = [dic objectForKey:@"comments"];
            [self.tableView reloadData];
            

        }
    }];
    [task resume];
    
    
}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataSource.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    TableViewCell1 *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        
         cell= [[NSBundle mainBundle] loadNibNamed:@"TableViewCell1" owner:self options:nil].firstObject;
    }
    

    dic2 = [_dataSource objectAtIndex:indexPath.row];
    cell.user.text = dic2[@"comment_author"];
    cell.time.text =dic2[@"comment_date"];
    cell.content.text = dic2[@"comment_content"];
    cell.zan.text = dic2[@"vote_positive"];
    cell.chaping.text = dic2[@"vote_negative"];
    cell.tucao.text = dic2[@"text_content"];
    
    return cell;
    
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    storyDetail *detail = [storyDetail creatXib];
    detail.listDictionary = dic2;
    
    detail.username.text =dic2[@"comment_author"];
    
    
    detail.time.text =dic2[@"comment_date"];
    detail.content.text = dic2[@"comment_content"];
    detail.dianzan.text = dic2[@"vote_positive"];
    detail.chaping.text = dic2[@"vote_negative"];
    detail.tucao.text = dic2[@"text_content"];
    
    

  //  NSLog(@"点击%@",indexPath);
    
    [detail show];
 
}

@end
