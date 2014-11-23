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
    
    NSLog(@"%@", @"You Are Pushing The Button");
    
}

@end
