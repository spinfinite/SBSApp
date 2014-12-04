//
//  SendMessageViewController.h
//  SBSApp
//
//  Created by Sergio Perez on 12/3/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import "ViewController.h"
#import <MessageUI/MessageUI.h>

@interface SendMessageViewController : ViewController <MFMailComposeViewControllerDelegate>
@property (strong, nonatomic) IBOutlet UITextField *Subject;
@property (strong, nonatomic) IBOutlet UITextView *Message;
@property (strong, nonatomic) IBOutlet UITextField *Speed;
- (IBAction)SendMessage:(id)sender;


@end
