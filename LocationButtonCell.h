//
//  LocationButtonCell.h
//  SBSApp
//
//  Created by Sergio Perez on 11/21/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>


@protocol LocationButtonCellDelegate;



@interface LocationButtonCell : UITableViewCell <CLLocationManagerDelegate>

@property (nonatomic, strong) CLLocationManager *locationManager;

@property (nonatomic, assign) id<LocationButtonCellDelegate>delegate;

@end



@protocol LocationButtonCellDelegate <NSObject>

@optional

- (void) latitude:(CGFloat)latitude longitude:(CGFloat)longitude;

@end