//
//  MessageViewController.m
//  LNRespectedGuest
//
//  Created by Barry on 15/11/17.
//  Copyright © 2015年 Yun. All rights reserved.
//

#import "MessageViewController.h"

@interface MessageViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong)UITableView *tableView;
@property(nonatomic,strong)NSArray *data;

@end

@implementation MessageViewController

/*创建UITableView*/
-(void)createTableView
{
    self.tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-64) style:UITableViewStylePlain];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    
    [self setExtraCellLineHidden:self.tableView];
    
    self.tableView.separatorColor = [UIColor greenColor];
    
    [self.view addSubview:self.tableView];
}
/*声明一个静态的复用标示*/
static NSString *cellIdentfier = @"Cell";
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /*创建数据源*/
    if(!_data)
        _data = @[@"赵",@"钱",@"孙",@"李",@"周",@"吴",@"郑",@"王",@"赵",@"钱",@"孙",@"李",@"周",@"吴",@"郑",@"王"];
    /*调用方法*/
    [self createTableView];
    /*向系统注册*/
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellIdentfier];
}

#pragma mark - 实现黄金三问
/*可选方法*/
//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return 1;
//}

/*必须方法*/
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    /*返回每一个分段有多少行*/
    return self.data.count;
}

/*必须方法*/
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    /*创建一个可以复用的Cell表格*/
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentfier];
    
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellIdentfier];
    }
    /*使用Cell即可*/
    cell.textLabel.text = self.data[indexPath.row];
    /*返回Cell的实例*/
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //反选
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60.0;
}


-(void)setExtraCellLineHidden: (UITableView *)tableView
{
    UIView *view = [UIView new];
    
    view.backgroundColor = [UIColor clearColor];
    
    [tableView setTableFooterView:view];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
