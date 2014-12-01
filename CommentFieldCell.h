//
//  CommentFieldCell.h
//  SBSApp
//
//  Created by Sergio Perez on 11/21/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MessageUI/MessageUI.h>

@interface CommentFieldCell : UITableViewCell <MFMailComposeViewControllerDelegate>

@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UILabel *commentLabel;
@property (nonatomic, strong) UILabel *mainLabel;

@end
