//
//  SendMessageCell.m
//  SBSApp
//
//  Created by Sergio Perez on 12/3/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import "SendMessageCell.h"
#import "SendMessageViewController.h"

@implementation SendMessageCell

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
    
    UILabel *message = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    message.backgroundColor = [UIColor lightGrayColor];
    message.text = @"    Send Message";
    
    [self addSubview:message];
    
}

@end
