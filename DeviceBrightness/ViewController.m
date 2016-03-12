//
//  ViewController.m
//  DeviceBrightness
//
//  Created by 王潇 on 16/3/12.
//  Copyright © 2016年 王潇. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	
	self.view.backgroundColor = [UIColor whiteColor];
	
	self.title = @"Second";
	
	UISlider *slid = [[UISlider alloc] initWithFrame:CGRectMake(50, 100, 300, 20)];
	slid.minimumValue = 0;
	slid.maximumValue = 1;
	slid.value = [UIScreen mainScreen].brightness;
	[slid addTarget:self action:@selector(change:) forControlEvents:UIControlEventValueChanged];
	[self.view addSubview:slid];
}

- (void)change:(UISlider *)slid {
	[UIScreen mainScreen].brightness = slid.value;
}

@end
