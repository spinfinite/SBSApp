//
//  CameraViewController.m
//  SBSApp
//
//  Created by Sergio Perez on 11/27/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import "CameraViewController.h"

@interface CameraViewController ()

@end

@implementation CameraViewController

@synthesize getImage, imagePicker;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Camera View Controller";
    
    self.view.backgroundColor = [UIColor blueColor];
    
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

- (BOOL)shouldAutorotate:(UIInterfaceOrientation)interfaceOrientation{
    
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    
}

- (IBAction)pickImage:(id)sender {
    
    imagePicker = [[UIImagePickerController alloc]init];
    
    //set delegage
    
    imagePicker.delegate = self;
    
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]){
        
        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
        
        CameraViewController *cameraController = [CameraViewController new];
        [self presentViewController:cameraController animated:YES completion:nil];
        

        
    }
    
    else{
        
        imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        
    }
    
}
@end
