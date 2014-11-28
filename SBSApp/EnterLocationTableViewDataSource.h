//
//  EnterLocationTableViewDataSource.h
//  SBSApp
//
//  Created by Sergio Perez on 11/27/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface EnterLocationTableViewDataSource : NSObject <UITableViewDataSource>

@property (nonatomic, strong) UILabel *mainLabel;
@property (nonatomic, strong) UITextField *textField;

@end
