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

@protocol GetLocationTableViewDataSourceDelegate;


@interface GetLocationTableViewDataSource : NSObject <UITableViewDataSource>

@property (nonatomic, strong) UILabel *mainLabel;
@property (nonatomic, strong) UITextField *textField;

@property (nonatomic) CGFloat latitude;
@property (nonatomic) CGFloat longitude;

@property (nonatomic, assign) id<GetLocationTableViewDataSourceDelegate>delegate;

@end


@protocol GetLocationTableViewDataSourceDelegate <NSObject>

@optional

- (void) latitude:(CGFloat)latitude longitude:(CGFloat)longitude;

@end