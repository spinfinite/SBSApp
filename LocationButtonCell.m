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
    
    UIButton *getCurrentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [getCurrentButton setTitle:@"Push to get Location" forState:UIControlStateNormal];
    [getCurrentButton addTarget:self action:@selector(locationMethod) forControlEvents:UIControlEventTouchUpInside];
    
    getCurrentButton.frame = CGRectMake(0.0, 0.0, self.frame.size.width, self.frame.size.height);
    getCurrentButton.backgroundColor = [UIColor greenColor];
    [self addSubview:getCurrentButton];
    

    
}

-(void)locationMethod{
    
    if (self.locationManager == nil) {
        self.locationManager = [[CLLocationManager alloc] init];
    }
    self.locationManager.delegate = self;
    self.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
    self.locationManager.distanceFilter = 10.0;
//    [self.locationManager startUpdatingLocation];
    [self.locationManager startMonitoringSignificantLocationChanges];
    
    CLLocation* location = [CLLocation new];
    NSDate* eventDate = location.timestamp;
    NSTimeInterval howRecent = [eventDate timeIntervalSinceNow];
    if (abs(howRecent) < 5.0) {
        // If the event is recent, do something with it.
        NSLog(@"latitude %+.6f, longitude %+.6f\n",
              location.coordinate.latitude,
              location.coordinate.longitude);
        
//        NSLog(@"%@", @"You Are Pushing The Button");
    }
//    NSLog(@"%@", @"You Are Pushing The Button");
    
}

//- (void)startSignificantChangeUpdates
//{
//    CLLocationManager *locationManager = [[CLLocationManager alloc] init];
//    // Create the location manager if this object does not
//    // already have one.
//    if (nil == locationManager)
//        locationManager = [[CLLocationManager alloc] init];
//    
//    locationManager.delegate = self;
//    [locationManager startMonitoringSignificantLocationChanges];
//    
//}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error{
    
    NSLog(@"Error: %@", error);
    NSLog(@"Failed to get location");
    
}


- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    
    // If it's a relatively recent event, turn off updates to save power.
    CLLocation* location = [locations lastObject];
    NSDate* eventDate = location.timestamp;
    NSTimeInterval howRecent = [eventDate timeIntervalSinceNow];
    if (abs(howRecent) < 5.0) {
        // If the event is recent, do something with it.
        NSLog(@"latitude %+.6f, longitude %+.6f\n",
              location.coordinate.latitude,
              location.coordinate.longitude);
        
             NSLog(@"%@", @"You Are Pushing The Button");
    }
}

@end
