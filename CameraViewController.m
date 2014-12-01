//
//  CameraViewController.m
//  SBSApp
//
//  Created by Sergio Perez on 11/27/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import "CameraViewController.h"

typedef NS_ENUM(NSInteger, ActionSheetButton){
    ActionSheetFromLibrary,
    ActionSheetTakePicture,
};
@interface CameraViewController () <UIActionSheetDelegate>

@property (strong, nonatomic) UIImagePickerController *imagePicker;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

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
    
//    imagePicker = [[UIImagePickerController alloc]init];
//    
//    //set delegage
//    
//    imagePicker.delegate = self;
//    
//    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]){
//        
//        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
//        
//        CameraViewController *cameraController = [CameraViewController new];
//        [self presentViewController:cameraController animated:YES completion:nil];
//        
//    }
//    
//    else if([UIImagePickerController isCameraDeviceAvailable:UIImagePickerControllerCameraDevice]){
//        
//        imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
//        
//    }
//    else{
//        
//        imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
//        
//    }
    
    UIActionSheet *profileActionSheet = [[UIActionSheet alloc] initWithTitle:nil delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:nil otherButtonTitles:@"From Camera Roll", @"Take Picture", nil];
    
    [profileActionSheet showInView:self.view];
    
}
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    ActionSheetButton button = buttonIndex;
    
    imagePicker.delegate = self;
    
    NSLog(@"%ld", (long)buttonIndex);
    
    switch (button) {
            
        case ActionSheetFromLibrary:{
            imagePicker.sourceType =  UIImagePickerControllerSourceTypePhotoLibrary;
            [self presentViewController:imagePicker animated:YES completion:nil];
            break;
        }
            
        case ActionSheetTakePicture:{
            if ([UIImagePickerController isSourceTypeAvailable:
                 UIImagePickerControllerSourceTypeCamera] == YES){
                
                imagePicker.sourceType =  UIImagePickerControllerSourceTypeCamera;
                imagePicker.cameraDevice = UIImagePickerControllerCameraDeviceFront;
                imagePicker.allowsEditing = YES;
                
                [self presentViewController:imagePicker animated:YES completion:nil];
                
            } else{
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Camera Not Available on Device" message:@"This device does not have a camera option. Please choose Photo Library" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
                [alert show];
            }
            break;
        }
    }
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    // Access the uncropped image from info dictionary
    UIImage *image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    
    // Dismiss controller
    [picker dismissViewControllerAnimated:YES completion:nil];
    
    // Set Avatar Image
    self.imageView.image = image;
    
    // Any other actions you want to take with the image would go here
    
}


@end
