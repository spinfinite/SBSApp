//
//  LocationButtonCell.h
//  SBSApp
//
//  Created by Sergio Perez on 11/21/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@protocol LocationButtonCellDelegate

- (void) getLatLong;

@end

@interface LocationButtonCell : UITableViewCell <CLLocationManagerDelegate>

@property (nonatomic, strong) CLLocationManager *locationManager;

@end
