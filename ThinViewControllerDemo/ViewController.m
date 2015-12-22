//
//  ViewController.m
//  ThinViewControllerDemo
//
//  Created by SamingZhong on 15/12/22.
//  Copyright © 2015年 zhong. All rights reserved.
//

#import "ViewController.h"
#import "DataSourceArray.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITableView *myTableView;
@property (nonatomic, strong) DataSourceArray *dataSourceArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _dataSourceArray = [[DataSourceArray alloc]initWithIdentifier:@"cell" source:@[@"数据1", @"数据2"] cellConfigureBlock:^(NSString *source, UITableViewCell *tableViewCell) {
        tableViewCell.textLabel.text = source;
    }];
    
    
    
    self.myTableView.dataSource = _dataSourceArray;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
