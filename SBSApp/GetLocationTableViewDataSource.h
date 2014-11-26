//
//  GetLocationTableViewDataSource.h
//  SBSApp
//
//  Created by Sergio Perez on 11/18/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface GetLocationTableViewDataSource : NSObject <UITableViewDataSource>

@property (nonatomic, strong) UILabel *mainLabel;
@property (nonatomic, strong) UITextField *textField;

- (void)registerTableView:(UITableView *)tableView;

@end
