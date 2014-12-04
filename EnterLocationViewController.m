//
//  EnterLocationViewController.m
//  SBSApp
//
//  Created by Sergio Perez on 11/18/14.
//  Copyright (c) 2014 Learning iOS Development. All rights reserved.
//

#import "EnterLocationViewController.h"
#import "EnterLocationTableViewDataSource.h"
#import "LocationButtonCell.h"
#import "AddressFieldCell.h"
#import "CommentFieldCell.h"
#import "MapFieldCell.h"
#import "CameraCell.h"

@interface EnterLocationViewController () <UITableViewDelegate>

@property (nonatomic, strong) UITableView *EnterLocationTableView;
@property (nonatomic, strong) EnterLocationTableViewDataSource *enterLocationDataSource;

@end

@implementation EnterLocationViewController

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
    
    self.title = @"Enter an Address";
    
    UIView *view = [[UIView alloc] initWithFrame:self.view.bounds];
    view.backgroundColor = [UIColor whiteColor];
    
    self.enterLocationDataSource = [EnterLocationTableViewDataSource new];
    
    self.EnterLocationTableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    [self.EnterLocationTableView registerClass:[UITableViewCell class]forCellReuseIdentifier:@"cell"];
    
    self.EnterLocationTableView.delegate = self;
    self.EnterLocationTableView.dataSource = self.enterLocationDataSource;
    
    [self.view addSubview:self.EnterLocationTableView];
    
    [self.EnterLocationTableView registerClass:[LocationButtonCell class]forCellReuseIdentifier:@"getLocation"];
    [self.EnterLocationTableView registerClass:[AddressFieldCell class] forCellReuseIdentifier:@"getAddress"];
    [self.EnterLocationTableView registerClass:[CommentFieldCell class] forCellReuseIdentifier:@"getComment"];
    [self.EnterLocationTableView registerClass:[MapFieldCell class] forCellReuseIdentifier:@"getMap"];
    [self.EnterLocationTableView registerClass:[CameraCell class] forCellReuseIdentifier:@"getCamera"];
    

    
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
