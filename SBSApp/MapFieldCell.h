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
@property (nonatomic, strong) CLLocationManager *manager;
@property (weak, nonatomic) MKMapView *mapView;

@end
