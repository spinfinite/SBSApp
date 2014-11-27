//
//  CameraCell.m
//  SBSApp
//
//  Created by Sergio Perez on 11/26/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import "CameraCell.h"

@implementation CameraCell

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
    
    UIButton *getCamera = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [getCamera setTitle:@"Push to take Picture" forState:UIControlStateNormal];
    [getCamera addTarget:self action:@selector(locationMethod) forControlEvents:UIControlEventTouchUpInside];
    
    getCamera.frame = CGRectMake(0.0, 0.0, self.frame.size.width, self.frame.size.height);
    getCamera.backgroundColor = [UIColor greenColor];
    [self addSubview:getCamera];
    
}

-(void)locationMethod{
    
    NSLog(@"%@", @"You Are Pushing the Camera Button");
    
}

@end
