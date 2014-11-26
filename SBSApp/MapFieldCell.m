//
//  MapFieldCell.m
//  SBSApp
//
//  Created by Sergio Perez on 11/24/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import "MapFieldCell.h"

@implementation MapFieldCell

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

- (void)setup{
    
//    self.textLabel.text = @"Your Current Location";
//    self.textLabel.textColor = [UIColor colorWithRed:238.0/255.0 green:237.0/255.0 blue:234.0/255.0 alpha:1];
//    self.textLabel.font = [UIFont fontWithName:@"Avenir Next" size:20];
//    
//    self.manager = [[CLLocationManager alloc] init];
//    [self.manager requestWhenInUseAuthorization];
//    
//    CLLocationCoordinate2D location = CLLocationCoordinate2DMake(40.226192, -111.660087);
//    float metersInmile = 1609;
//    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location, .5* metersInmile, .5* metersInmile);
//    
//    [self.mapView setRegion:region];
//    [self addSubview:_mapView];
    
    
        
    MKMapView *mapView = [[MKMapView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width,100)];
        
    MKCoordinateSpan span = MKCoordinateSpanMake(0.01, 0.01);
    CLLocationCoordinate2D logCord = CLLocationCoordinate2DMake(47.606, -122.332);
    MKCoordinateRegion region = MKCoordinateRegionMake(logCord, span);
    [mapView setRegion:region animated:NO];
        
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"aaaa"];
    [cell.contentView addSubview:mapView];
        
    [self addSubview:mapView];

    
}

@end
