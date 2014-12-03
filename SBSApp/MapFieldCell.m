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
        [self latitude:self.latitude longitude:self.longitude];
        
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

- (void) latitude:(CGFloat)latitude longitude:(CGFloat)longitude{
        
    MKMapView *mapView = [[MKMapView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, 200)];
        
    MKCoordinateSpan span = MKCoordinateSpanMake(0.01, 0.01);
    CLLocationCoordinate2D logCord = CLLocationCoordinate2DMake(latitude, longitude);
    MKCoordinateRegion region = MKCoordinateRegionMake(logCord, span);
    [mapView setRegion:region animated:NO];
    

    [self addSubview:mapView];
    
}



@end
