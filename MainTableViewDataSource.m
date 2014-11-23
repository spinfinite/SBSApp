//
//  MainTableViewDataSource.m
//  SBSApp
//
//  Created by Sergio Perez on 11/18/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import "MainTableViewDataSource.h"

@implementation MainTableViewDataSource

- (NSArray *)mainOptions{
    return @[@"Get Location View", @"Enter Location View"];
}

- (void)registerTableView:(UITableView *)tableView{
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [self mainOptions].count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *newCell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!newCell) {
        newCell = [UITableViewCell new];
    }
    newCell.textLabel.text = [self mainOptions][indexPath.row];
    return newCell;
    
}

@end
