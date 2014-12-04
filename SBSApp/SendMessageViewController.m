//
//  SendMessageViewController.m
//  SBSApp
//
//  Created by Sergio Perez on 12/3/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import "SendMessageViewController.h"

@interface SendMessageViewController ()

@end

@implementation SendMessageViewController
@synthesize Subject;
//@synthesize Speed;
@synthesize Message;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    self.title = @"Mail View Controller";

    self.view.backgroundColor = [UIColor blueColor];

}
- (IBAction)SendMessage:(id)sender{
    MFMailComposeViewController *mailComposer;
    mailComposer = [[MFMailComposeViewController alloc]init];
    mailComposer.mailComposeDelegate = self;
    
    NSArray *emailAddresses;
    emailAddresses=[[NSArray alloc]initWithObjects:@"support@inthinc.com", nil];
    
    //get strings for subject and message
    NSString *sendSubject = [[NSString alloc]initWithFormat:@"%@", self.Subject.text];
//    NSString *sendSpeed = [[NSString alloc]initWithFormat:@"%@", self.Speed.text];
    NSString *sendMessage = [[NSString alloc]initWithFormat:@"%@", self.Message.text];
    
    [mailComposer setToRecipients:emailAddresses];
    [mailComposer setSubject:sendSubject];
    [mailComposer setMessageBody:sendMessage isHTML:NO];
//    [self modalPresentationStyle:mailComposer animated:YES];
    [self presentViewController:mailComposer animated:YES completion:nil];
    
    
}

- (void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
