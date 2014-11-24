//
//  GetLocationTableViewDataSource.m
//  SBSApp
//
//  Created by Sergio Perez on 11/18/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import "GetLocationTableViewDataSource.h"
#import "LocationButtonCell.h"
#import "AddressFieldCell.h"

@implementation GetLocationTableViewDataSource

- (void)registerTableView:(UITableView *)tableView{
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *newCell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!newCell) {
        newCell = [UITableViewCell new];
    }
    
    if (indexPath.section == 0 && indexPath.row == 0){
        
        LocationButtonCell *getLocation = [tableView dequeueReusableCellWithIdentifier:@"getLocation" forIndexPath:indexPath];
        
        return getLocation;
    }
    
    else if (indexPath.section == 0 && indexPath.row == 1) {
        AddressFieldCell *addressField = [tableView dequeueReusableCellWithIdentifier:@"getAddress" forIndexPath:indexPath];
        addressField.mainLabel.text = @"Address";
        addressField.textField.placeholder = @"Your Location";
        [addressField.textField setValue:[UIColor colorWithRed:119.0/255.0 green:123.0/255.0 blue:133.0/255.0 alpha:1]
                                       forKeyPath:@"_placeholderLabel.textColor"];
        
        return addressField;
        
    }
    
    if (indexPath.section == 0 && indexPath.row == 2){
        
        LocationButtonCell *getLocation = [tableView dequeueReusableCellWithIdentifier:@"getLocation" forIndexPath:indexPath];
        
        return getLocation;
    }
    
    else if (indexPath.section == 1 && indexPath.row == 0){
        
        UITableViewCell *showMap = [UITableViewCell new];
        showMap.textLabel.text = @"Your Current Location";
        showMap.textLabel.textColor = [UIColor colorWithRed:238.0/255.0 green:237.0/255.0 blue:234.0/255.0 alpha:1];
        showMap.textLabel.font = [UIFont fontWithName:@"Avenir Next" size:20];

        self.manager = [[CLLocationManager alloc] init];
        [self.manager requestWhenInUseAuthorization];
        
        CLLocationCoordinate2D location = CLLocationCoordinate2DMake(40.226192, -111.660087);
        float metersInmile = 1609;
        MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location, .5* metersInmile, .5* metersInmile);
        
        [self.mapView setRegion:region];
        
//        UITableViewCell *newCell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
//        newCell.textLabel.text = @"Cell 2";
        
        return showMap;
    }
    else if (indexPath.section == 2 && indexPath.row == 0){
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [button addTarget:self
                   action:@selector(nilSymbol)
         forControlEvents:UIControlEventTouchUpInside];
        [button setTitle:@"Show View" forState:UIControlStateNormal];
        button.frame = CGRectMake(80.0, 210.0, 160.0, 40.0);
        return newCell;
        
    }
    else{
        UITableViewCell *blankCell = [UITableViewCell new];
        
        return blankCell;
    }
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    
    return 3;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 4;
    }
    else if (section == 1) {
        return 2;
    }
    else if (section == 2) {
        return 2;
    }
    else if (section == 3) {
        return 2;
    }
    else {
        return 0;
    }
    
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    switch (section) {
        case 0:
            return @"Get Current Location";
            break;
            
        case 1:
            return @"Show Map";
            break;
            
        case 2:
            return @"Take Picture";
            break;
            
        default:
            return @"Section Title";
            break;
    }
    
}


@end
