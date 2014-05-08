//
//  NTViewController.m
//  demoProject
//
//  Created by Nicholas Tau on 5/7/14.
//  Copyright (c) 2014 Nicholas Tau. All rights reserved.
//

#import "NTViewController.h"
#import "NTUIConfig.h"

@interface NTViewController ()

@end

@implementation NTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [[NTUIConfig sharedInstance] styleColor];

//可以通过这种方式进行判断，从而实现不同的逻辑
#ifdef APP_A
    NSLog(@"This is project A");
#endif
    
#ifdef APP_B
    NSLog(@"This is project B");
#endif
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
