//
//  DataSourceArray.m
//  ThinViewControllerDemo
//
//  Created by SamingZhong on 15/12/23.
//  Copyright © 2015年 zhong. All rights reserved.
//

#import "DataSourceArray.h"

@interface DataSourceArray()
@property (nonatomic, strong) NSArray *data;

@end

@implementation DataSourceArray
-(instancetype)initWithIdentifier:(NSString *)identifier source:(NSArray *)source cellConfigureBlock:(CellConfigureBlock)cellConfigureBlock{
    self = [super init];
    if (self) {
        if (!cellConfigureBlock) {
            NSLog(@"CellConfigureBlock is nil");
            return nil;
        }
        _cellConfigurationBlock = cellConfigureBlock;

        _data = source;
    }
    
    return self;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _data.count;
}

-(NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index{
    return 1;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell;
    static NSString *cellIdentifier = @"cell";
    cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        NSLog(@"cell复用池中没有找到.");
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    _cellConfigurationBlock(_data[indexPath.row], cell);
    return cell;
}

@end
