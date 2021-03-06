//
//  MapFieldCell.h
//  SBSApp
//
//  Created by Sergio Perez on 11/24/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MapFieldCell : UITableViewCell

@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UILabel *mainLabel;
@property (weak, nonatomic) MKMapView *mapView;

@property (nonatomic) CGFloat latitude;
@property (nonatomic) CGFloat longitude;

- (void) latitude:(CGFloat)latitude longitude:(CGFloat)longitude;

@end


