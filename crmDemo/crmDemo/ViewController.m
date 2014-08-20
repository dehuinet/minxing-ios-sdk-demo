//
//  ViewController.m
//  crmDemo
//
//  Created by liyang on 14-8-20.
//  Copyright (c) 2014年 minxing. All rights reserved.
//

#import "ViewController.h"
#import "crmDemoLib.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSLog(@"1111111");
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewDidAppear:(BOOL)animated
{
    crmDemoLib *crmLib = [[crmDemoLib alloc] init];
    [crmLib presentCRMDemo];
    
//    NSString *objName = @"crmDemoLib";
//    Class demo = NSClassFromString(objName);
//    id instacnce = [[demo alloc] init];
//    SEL demoSelector = NSSelectorFromString(@"presentCRMDemo");
//    [instacnce performSelector:demoSelector withObject:nil afterDelay:0];
}

@end
