//
//  ViewController.m
//  ImageIndicatorSample
//
//  Created by SatoshiN21 on 2015/04/17.
//  Copyright (c) 2015年 SatoshiN. All rights reserved.
//

#import "ViewController.h"
#import "IndicatorLayer.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *indicatorView;
@property (weak, nonatomic) IBOutlet UIImageView *iconImage;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.indicatorView addIndicatorWithDirection:IndicatorDirectionRight color:self.indicatorView.backgroundColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
