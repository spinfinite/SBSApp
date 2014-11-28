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
    
    UIButton *getCamera = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [getCamera setTitle:@"Push to take Picture" forState:UIControlStateNormal];
    [getCamera addTarget:self action:@selector(locationMethod) forControlEvents:UIControlEventTouchUpInside];
    
    getCamera.frame = CGRectMake(0.0, 0.0, self.frame.size.width, self.frame.size.height);
    getCamera.backgroundColor = [UIColor greenColor];
    
//    CameraViewController *cameraController = [[CameraViewController alloc]init];
//    UINavigationController *navigationController = [[UINavigationController alloc]initWithRootViewController:cameraController];
//////
//    self.window.rootViewController = navigationController;
    
    [self addSubview:getCamera];
    
//    self.window.backgroundColor = [UIColor whiteColor];
//    [self.window makeKeyAndVisible];
    
}



-(void)locationMethod{
    
//        CameraViewController *camController = [CameraViewController new];
//        [self.navigationController pushViewController:camController animated:YES];
    
    CameraViewController *cameraController = [[CameraViewController alloc]init];
    UINavigationController *navigationController = [[UINavigationController alloc]initWithRootViewController:cameraController];

    self.window.rootViewController = navigationController;
    
}

@end
