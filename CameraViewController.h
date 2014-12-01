//
//  CameraViewController.h
//  SBSApp
//
//  Created by Sergio Perez on 11/27/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CameraViewController : UIImagePickerController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *getImage;

- (IBAction)pickImage:(id)sender;

@end
