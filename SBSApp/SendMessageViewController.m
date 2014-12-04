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
   // [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

    self.title = @"Mail View Controller";

    self.view.backgroundColor = [UIColor blueColor];

}
- (IBAction)SendMessage:(id)sender{
    MFMailComposeViewController *mailComposer;
    mailComposer = [[MFMailComposeViewController alloc]init];
    mailComposer.mailComposeDelegate = self;
    
    NSArray *emailAddresses;
    emailAddresses=[[NSArray alloc]initWithObjects:@"spinfinite07@gmail.com", nil];
    
    //get strings for subject and message
    NSString *sendSubject = [[NSString alloc]initWithFormat:@"%@", self.Subject.text];
//    NSString *sendSpeed = [[NSString alloc]initWithFormat:@"%@", self.Speed.text];
    NSString *sendMessage = [[NSString alloc]initWithFormat:@"%@", self.Message.text];
    
    [mailComposer setToRecipients:emailAddresses];
    [mailComposer setSubject:sendSubject];
//    [mailComposer set:sendSpeed];
    [mailComposer setMessageBody:sendMessage isHTML:NO];

    [self presentViewController:mailComposer animated:YES completion:Nil];
//    [self dismissViewControllerAnimated:YES completion:nil];
//  [self mailComposeController didFinishWithResult error];
    
}

- (void)mailComposeController:(MFMailComposeViewController *)mailComposer didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
             NSLog(@"Print Me Here too!!");
    
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
