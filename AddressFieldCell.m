//
//  AddressFieldCell.m
//  SBSApp
//
//  Created by Sergio Perez on 11/21/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import "AddressFieldCell.h"
#import "LocationButtonCell.h"


@implementation AddressFieldCell

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
    self.addressLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
    self.addressLabel.textColor = [UIColor colorWithRed:238.0/255.0 green:237.0/255.0 blue:234.0/255.0 alpha:1];
    self.addressLabel.font = [UIFont fontWithName:@"Avenir Next" size:20];
    self.addressLabel.backgroundColor = [UIColor blueColor];
    [self addSubview:self.addressLabel];
    
    
}

@end
