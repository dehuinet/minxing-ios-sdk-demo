//
//  FirstViewController.m
//  crmDemo
//
//  Created by liyang on 14-8-4.
//  Copyright (c) 2014年 minxing. All rights reserved.
//

#import "FirstViewController.h"
#import "minxingAPI.h"

@interface FirstViewController ()
{
    UIButton *testButton;
    UIButton *callMinxingButton;
    UIButton *homeButton;
}

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    testButton = [UIButton buttonWithType:UIButtonTypeCustom];
    testButton.frame = CGRectMake(50, 80, 60, 30);
    testButton.backgroundColor = [UIColor grayColor];
    [testButton setTitle:@"test" forState:UIControlStateNormal];
    [testButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [testButton addTarget:self action:@selector(showSecondView:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testButton];
    
    callMinxingButton = [UIButton buttonWithType:UIButtonTypeCustom];
    callMinxingButton.frame = CGRectMake(50, 120, 100, 30);
    callMinxingButton.backgroundColor = [UIColor grayColor];
    [callMinxingButton setTitle:@"发消息" forState:UIControlStateNormal];
    [callMinxingButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [callMinxingButton addTarget:self action:@selector(callMinxing:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:callMinxingButton];
    
    homeButton = [UIButton buttonWithType:UIButtonTypeCustom];
    homeButton.frame = CGRectMake(50, 160, 100, 30);
    homeButton.backgroundColor = [UIColor grayColor];
    [homeButton setTitle:@"工作圈" forState:UIControlStateNormal];
    [homeButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [homeButton addTarget:self action:@selector(homeMinxing:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:homeButton];
    
    self.title = @"CRM Demo";
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBarHidden = NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(void)showSecondView:(UIButton *)sender
{
    NSLog(@"----show the second view-----");
}

-(void)callMinxing:(UIButton *)sender
{
    NSArray *userArr = [NSArray arrayWithObjects:@"1076",@"1077", nil];
    [minxingAPI startConversation:userArr withApplication:[UIApplication sharedApplication]];
    
//    NSString *minxingChatURL = @"minxing://?1459&1469&1238#chat";
////    NSString *minxingChatURL = @"minxing://?chat=2044";
//
//    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:minxingChatURL]])
//    {
//        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:minxingChatURL]];
//    }
//    else
//    {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"URL error"  message:[NSString stringWithFormat:@"No custom URL defined for %@", minxingChatURL] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
//        [alert show];
//    }
}

-(void)homeMinxing:(UIButton *)sender
{
    [minxingAPI sendToCircle:0 withContent:@"testfromdemo123" withApplication:[UIApplication sharedApplication]];
//    NSString *minxingChatURL = @"minxing://?type=0&content=crmDemo1111111testmessage#work";
//    
//    if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:minxingChatURL]])
//    {
//        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:minxingChatURL]];
//    }
//    else
//    {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"URL error"  message:[NSString stringWithFormat:@"No custom URL defined for %@", minxingChatURL] delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
//        [alert show];
//    }
}

@end
