//
//  StoreOneOneCell.h
//  LNRespectedGuest
//
//  Created by 理念科技有限公司 on 15/12/18.
//  Copyright © 2015年 Yun. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface StoreOneOneCell : UITableViewCell

+ (instancetype)storeOneCellWithTableView:(UITableView *)tableView;

@property (nonatomic,strong) UIScrollView *scrollView;

@end
