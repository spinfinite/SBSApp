//
//  AddressFieldCell.m
//  SBSApp
//
//  Created by Sergio Perez on 11/21/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import "AddressFieldCell.h"

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
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 220, 40)];
    label.textColor = [UIColor colorWithRed:238.0/255.0 green:237.0/255.0 blue:234.0/255.0 alpha:1];
    label.font = [UIFont fontWithName:@"Avenir Next" size:20];
    self.addressLabel = label;
    [self addSubview:label];
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(255, 7, 50, 40)];
    textField.textColor = [UIColor colorWithRed:238.0/255.0 green:237.0/255.0 blue:234.0/255.0 alpha:1];
    textField.textAlignment = NSTextAlignmentRight;
    textField.keyboardType = UIKeyboardTypeNumberPad;
    textField.delegate = self;
    self.textField = textField;
    [self addSubview:textField];
    
}

-(void)locationMethod{
    
    NSLog(@"%@", @"You Are Pushing The Button");
}
@end
