//
//  ViewController.h
//  testAnimation
//
//  Created by Admin on 2018/12/28.
//  Copyright © 2018年 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIViewController+Extend.h"
@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong) UITableView *tableView;
@property(nonatomic,strong) NSMutableArray *dataSource;

@end

