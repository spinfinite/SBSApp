//
//  GetLocationViewController.m
//  SBSApp
//
//  Created by Sergio Perez on 11/18/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import "GetLocationViewController.h"
#import "GetLocationTableViewDataSource.h"
#import "LocationButtonCell.h"
#import "AddressFieldCell.h"
#import "CommentFieldCell.h"
#import "MapFieldCell.h"
#import "CameraCell.h"
#import "CameraViewController.h"

@interface GetLocationViewController () <UITableViewDelegate, GetLocationTableViewDataSourceDelegate>

@property (nonatomic, strong) UITableView *GetLocationTableView;
@property (nonatomic, strong) GetLocationTableViewDataSource *getLocationDataSource;

@end

@implementation GetLocationViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Get Location View Controller";
    
    UIView *view = [[UIView alloc] initWithFrame:self.view.bounds];
    view.backgroundColor = [UIColor whiteColor];
    
    self.getLocationDataSource = [GetLocationTableViewDataSource new];
    self.getLocationDataSource.delegate = self;
    
    
    self.GetLocationTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    [self.GetLocationTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    self.GetLocationTableView.delegate = self;
    self.GetLocationTableView.dataSource = self.getLocationDataSource;
    
    //self.GetLocationTableView.dataSource.delegate = self;
    
    [self.view addSubview:self.GetLocationTableView];
    
    [self.GetLocationTableView registerClass:[LocationButtonCell class] forCellReuseIdentifier:@"getLocation"];
    [self.GetLocationTableView registerClass:[AddressFieldCell class] forCellReuseIdentifier:@"getAddress"];
    [self.GetLocationTableView registerClass:[CommentFieldCell class] forCellReuseIdentifier:@"getComment"];
    [self.GetLocationTableView registerClass:[MapFieldCell class] forCellReuseIdentifier:@"getMap"];
    [self.GetLocationTableView registerClass:[CameraCell class] forCellReuseIdentifier:@"getCamera"];
    
    
    //self.view.backgroundColor = [UIColor blueColor];

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

-  (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (indexPath.section == 0 && indexPath.row == 2) {
        return 200;
    }
    else {
        return 40;
    }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if(indexPath.section == 2 && indexPath.row == 0){
        
        CameraViewController *cameraController = [CameraViewController new];
        [self.navigationController presentViewController:cameraController animated:YES completion:nil];
        
    }
}


- (void) latitude:(CGFloat)latitude longitude:(CGFloat)longitude {
    
    self.latitude = latitude;
    self.longitude = longitude;
    
    [self.GetLocationTableView reloadData];
    
    
    
}

@end
