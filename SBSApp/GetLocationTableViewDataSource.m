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
#import "CommentFieldCell.h"
#import "MapFieldCell.h"
#import "CameraCell.h"
#import "CameraViewController.h"

@implementation GetLocationTableViewDataSource

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
        addressField.textField.placeholder = @"Your Current Location";
        [addressField.textField setValue:[UIColor colorWithRed:119.0/255.0 green:123.0/255.0 blue:133.0/255.0 alpha:1]
                                       forKeyPath:@"_placeholderLabel.textColor"];
        
        return addressField;
        
    }
    
    else if (indexPath.section == 0 && indexPath.row == 2){
        
        MapFieldCell *mapField = [tableView dequeueReusableCellWithIdentifier:@"getMap" forIndexPath:indexPath];
        
        return mapField;
    }
    
    else if (indexPath.section == 1 && indexPath.row == 0){
        
        CommentFieldCell *commentField = [tableView dequeueReusableCellWithIdentifier:@"getComment" forIndexPath:indexPath];
        commentField.mainLabel.text = @"Comment";
        commentField.textField.placeholder = @"Enter Correct Speed Limit";
        [commentField.textField setValue:[UIColor colorWithRed:119.0/255.0 green:123.0/255.0 blue:133.0/255.0 alpha:1]
                              forKeyPath:@"_placeholderLabel.textColor"];
        
        return commentField;
        
    }
    
    else if (indexPath.section == 1 && indexPath.row == 1){
        
        CommentFieldCell *commentField = [tableView dequeueReusableCellWithIdentifier:@"getComment" forIndexPath:indexPath];
        commentField.mainLabel.text = @"Comment";
        commentField.textField.placeholder = @"Enter Comments";
        [commentField.textField setValue:[UIColor colorWithRed:119.0/255.0 green:123.0/255.0 blue:133.0/255.0 alpha:1]
                              forKeyPath:@"_placeholderLabel.textColor"];
        
        return commentField;
        
    }
    
    else if (indexPath.section == 2 && indexPath.row == 0){
        
        CameraCell *getCamera = [tableView dequeueReusableCellWithIdentifier:@"getCamera" forIndexPath:indexPath];
        
        return getCamera;
        
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
        return 3;
    }
    else if (section == 1) {
        return 2;
    }
    else if (section == 2) {
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
            return @"Submit Request";
            break;
            
        case 2:
            return @"Attach Picture";
            break;
            
        default:
            return @"Section Title";
            break;
    }
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowInSection:(NSInteger)section{
    if (section == 0)
    {
        return 200;
    }
    else
    {
        return 0;
    }
}

@end
