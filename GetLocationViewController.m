//
//  GetLocationViewController.m
//  SBSApp
//
//  Created by Sergio Perez on 11/18/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import "GetLocationViewController.h"
#import "GetLocationTableViewDataSource.h"
#import <MapKit/MapKit.h>
#import "LocationButtonCell.h"

@interface GetLocationViewController () <UITableViewDelegate>

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
    
    self.GetLocationTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    [self.GetLocationTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    
    self.GetLocationTableView.delegate = self;
    self.GetLocationTableView.dataSource = self.getLocationDataSource;
    
    [self.view addSubview:self.GetLocationTableView];
    
    [self.GetLocationTableView registerClass:[LocationButtonCell class] forCellReuseIdentifier:@"getLocation"];
    
    //self.view.backgroundColor = [UIColor blueColor];
    

}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    
//    if(indexPath.row == 0){
//        
////        self.manager = [[CLLocationManager alloc] init];
////        [self.manager requestWhenInUseAuthorization];
////        
////        CLLocationCoordinate2D location = CLLocationCoordinate2DMake(40.226192, -111.660087);
////        float metersInmile = 1609;
////        MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location, .5* metersInmile, .5* metersInmile);
////        
////        [self.mapView setRegion:region];
////        
////        self.view.backgroundColor = [UIColor blueColor];
//        
//    }
//    
//    else if(indexPath.row == 1){
//        
////        self.getLocationDataSource = [GetLocationTableViewDataSource new];
////        
////        //Initialize and add the tableView as a subview of the main view
////        
////        self.GetLocationTableView = [UITableView new];
////        self.GetLocationTableView.dataSource = self.getLocationDataSource;
////        self.GetLocationTableView.frame = self.view.bounds;
////        [self.view addSubview:self.GetLocationTableView];
//        
//    }
//    
//    else if(indexPath.row == 2){
//        
////        self.manager = [[CLLocationManager alloc] init];
////        [self.manager requestWhenInUseAuthorization];
////        
////        CLLocationCoordinate2D location = CLLocationCoordinate2DMake(40.226192, -111.660087);
////        float metersInmile = 1609;
////        MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(location, .5* metersInmile, .5* metersInmile);
////        
////        [self.mapView setRegion:region];
//        
//        self.view.backgroundColor = [UIColor blueColor];
//        
//    }
//    
//}

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
