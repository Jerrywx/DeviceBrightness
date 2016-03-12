//
//  MainViewController.m
//  DeviceBrightness
//
//  Created by 王潇 on 16/3/12.
//  Copyright © 2016年 王潇. All rights reserved.
//

#import "MainViewController.h"
#import "ViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

	self.view.backgroundColor = [UIColor whiteColor];
	self.title = @"Main";
	UISlider *slid = [[UISlider alloc] initWithFrame:CGRectMake(50, 100, 300, 20)];
	slid.minimumValue = 0;
	slid.maximumValue = 1;
	slid.value = [UIScreen mainScreen].brightness;
	[slid addTarget:self action:@selector(change:) forControlEvents:UIControlEventValueChanged];
	[self.view addSubview:slid];
	
	self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"PUSH"
																			 style:UIBarButtonItemStylePlain
																			target:self
																			action:@selector(push)];
}

- (void)change:(UISlider *)slid {
	[UIScreen mainScreen].brightness = slid.value;
}

- (void)push {
	ViewController *v = [[ViewController alloc] init];
	[self.navigationController pushViewController:v animated:YES];
}

@end
