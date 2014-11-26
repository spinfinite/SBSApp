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
    
    self.textLabel.text = @"Your Current Location";
    self.textLabel.textColor = [UIColor colorWithRed:238.0/255.0 green:237.0/255.0 blue:234.0/255.0 alpha:1];
    self.textLabel.font = [UIFont fontWithName:@"Avenir Next" size:20];
    
    self.manager = [[CLLocationManager alloc] init];
    [self.manager requestWhenInUseAuthorization];
    
    CLLocationCoordinate2D location = CLLocationCoordinate2DMake(40.226192, -111.660087);
    float metersInmile = 1609;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location, .5* metersInmile, .5* metersInmile);
    
    [self.mapView setRegion:region];
    [self addSubview:_mapView];
    
}

@end
