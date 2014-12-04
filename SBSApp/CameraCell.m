//
//  CameraCell.m
//  SBSApp
//
//  Created by Sergio Perez on 11/26/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import "CameraCell.h"
#import "CameraViewController.h"

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
    
    UILabel *getCamera = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    getCamera.backgroundColor = [UIColor lightTextColor];
    getCamera.text = @"    Attach Picture";
    
    [self addSubview:getCamera];
    
}

@end
