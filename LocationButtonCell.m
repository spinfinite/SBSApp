//
//  LocationButtonCell.m
//  SBSApp
//
//  Created by Sergio Perez on 11/21/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import "LocationButtonCell.h"

@implementation LocationButtonCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{

    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        
        [self setup];
    }
    return self;
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setup{
    [self setupLocationManager];
    
    UIButton *getCurrentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [getCurrentButton setTitle:@"Push to get Location" forState:UIControlStateNormal];
    [getCurrentButton addTarget:self.locationManager action:@selector(startUpdatingLocation) forControlEvents:UIControlEventTouchUpInside];
    
    getCurrentButton.frame = CGRectMake(0.0, 0.0, self.frame.size.width, self.frame.size.height);
    getCurrentButton.backgroundColor = [UIColor greenColor];
    [self addSubview:getCurrentButton];
    
}

- (void)setupLocationManager {
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.delegate = self;
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    self.locationManager.distanceFilter = 10.0;
    [self.locationManager requestWhenInUseAuthorization];
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations
{
    CLLocation *location = locations.firstObject;

    NSDate* eventDate = location.timestamp;
    NSTimeInterval howRecent = [eventDate timeIntervalSinceNow];
    if (abs(howRecent) < 5.0) {
        // If the event is recent, do something with it.
        NSLog(@"latitude %+.6f, longitude %+.6f\n",
              location.coordinate.latitude,
              location.coordinate.longitude);
    }

    [manager stopUpdatingLocation];
    
}

- (void) getLatLong{
    
}

- (void)startSignificantChangeUpdates
{
    CLLocationManager *locationManager = [[CLLocationManager alloc] init];
    // Create the location manager if this object does not
    // already have one.
    if (nil == locationManager)
        self.locationManager = [[CLLocationManager alloc] init];

    [self.locationManager startMonitoringSignificantLocationChanges];
    
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    
    NSLog(@"Error: %@", error);
    NSLog(@"Failed to get location");
    
}

@end
