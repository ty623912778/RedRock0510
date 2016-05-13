//
//  ViewController.m
//  PramaWells
//
//  Created by mac on 16/5/8.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "ViewController1.h"
#import "ViewController2.h"
#import "ViewController3.h"

#import "FlipTableView.h"
#import "SegmentTapView.h"

#define ScreeFrame [UIScreen mainScreen].bounds


@interface ViewController ()<SegmentTapViewDelegate,FlipTableViewDelegate>
@property (nonatomic, strong)SegmentTapView *segment;
@property (nonatomic, strong)FlipTableView *flipView;
@property (strong, nonatomic) NSMutableArray *controllsArray;
@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    [self initSegment];
    [self initFlipTableView];
    UIBarButtonItem *pic = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"menu-icon" ] style:UIBarButtonItemStylePlain target:self action:@selector(onAdd)];
     UIBarButtonItem *tit = [[UIBarButtonItem alloc] initWithTitle:@"App" style:UIBarButtonItemStylePlain target:self action:@selector(onAdd)];
    self.navigationItem.leftBarButtonItems = [NSArray arrayWithObjects:pic,tit,nil];
    self.navigationItem.leftBarButtonItems[0].enabled = NO;
    self.navigationItem.leftBarButtonItems[1].enabled = NO;

}
- (void)onAdd{
    
}

-(void)initSegment{
    self.segment = [[SegmentTapView alloc] initWithFrame:CGRectMake(0, 64, ScreeFrame.size.width, 40) withDataArray:[NSArray arrayWithObjects:@"Stories",@"Girls",@"Lots",nil] withFont:15];
    self.segment.delegate = self;
    [self.view addSubview:self.segment];
}

-(void)initFlipTableView{
    if (!self.controllsArray) {
        self.controllsArray = [[NSMutableArray alloc] init];
    }
    
    
    ViewController1 *v1 = [[UIStoryboard storyboardWithName:@"Body" bundle:nil] instantiateViewControllerWithIdentifier:@"first"];
    ViewController2 *v2 = [[UIStoryboard storyboardWithName:@"Body" bundle:nil] instantiateViewControllerWithIdentifier:@"second"];
    ViewController3 *v3 = [[UIStoryboard storyboardWithName:@"Body" bundle:nil] instantiateViewControllerWithIdentifier:@"third"];
    [self.controllsArray addObject:v1];
    [self.controllsArray addObject:v2];
    [self.controllsArray addObject:v3];

    
    self.flipView = [[FlipTableView alloc] initWithFrame:CGRectMake(0, 104, ScreeFrame.size.width, self.view.frame.size.height - 104) withArray:_controllsArray];
    self.flipView.delegate = self;
    [self.view addSubview:self.flipView];
}
-(void)selectedIndex:(NSInteger)index
{
    [self.flipView selectIndex:index];
    
}
-(void)scrollChangeToIndex:(NSInteger)index
{
   // NSLog(@"%ld",index);
    [self.segment selectIndex:index];
}


@end
