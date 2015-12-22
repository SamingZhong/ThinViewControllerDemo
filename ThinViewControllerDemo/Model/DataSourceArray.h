//
//  DataSourceArray.h
//  ThinViewControllerDemo
//
//  Created by SamingZhong on 15/12/23.
//  Copyright © 2015年 zhong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^CellConfigureBlock)(NSString *source, UITableViewCell *tableViewCell);

@interface DataSourceArray : NSObject <UITableViewDataSource>
@property (nonatomic, copy) CellConfigureBlock cellConfigurationBlock;

-(instancetype)initWithIdentifier:(NSString *)identifier source:(NSArray *)source cellConfigureBlock:(CellConfigureBlock)cellConfigureBlock;
@end
