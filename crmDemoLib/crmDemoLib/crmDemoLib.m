//
//  crmDemoLib.m
//  crmDemoLib
//
//  Created by liyang on 14-8-18.
//  Copyright (c) 2014年 minxing. All rights reserved.
//

#import "crmDemoLib.h"
#import "FirstViewController.h"

@implementation crmDemoLib

-(id)init
{
    self = [super init];
    if(self)
    {
        
    }
    return self;
}

-(void)presentCRMDemo
{
    NSArray *windows = [[UIApplication sharedApplication] windows];
    UIViewController *rootViewController = (windows.count > 0) ? [[windows objectAtIndex:0] rootViewController] : nil;
    if (rootViewController)
    {
        FirstViewController *firstViewController = [[FirstViewController alloc] init];
        if([rootViewController isKindOfClass:[UITabBarController class]])
        {
            UITabBarController *tabController = (UITabBarController *)rootViewController;
            UINavigationController *nav = [tabController.viewControllers objectAtIndex:3];
            firstViewController.hidesBottomBarWhenPushed = YES;
            [nav pushViewController:firstViewController animated:YES];
        }
        else
        {
            if([rootViewController isKindOfClass:[UINavigationController class]])
            {
                [(UINavigationController *)rootViewController pushViewController:firstViewController animated:YES];

            }
            else
            {
                [rootViewController.navigationController pushViewController:firstViewController animated:YES];
            }
        }
    }
}

@end
