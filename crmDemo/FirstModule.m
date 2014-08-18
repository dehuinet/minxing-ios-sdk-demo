//
//  FirstModule.m
//  crmDemo
//
//  Created by liyang on 14-8-4.
//  Copyright (c) 2014年 minxing. All rights reserved.
//

#import "FirstModule.h"
#import "Objection.h"
#import "FirstViewController.h"
#import "CRMModelProtocols.h"

@implementation FirstModule

+ (void)load
{
    JSObjectionInjector *injector = [JSObjection defaultInjector];
    injector = injector ? : [JSObjection createInjector];
    injector = [injector withModule:[[self alloc] init]];
    [JSObjection setDefaultInjector:injector];
}

-(void)configure
{
    [self bindClass:[FirstViewController class] toProtocol:@protocol(CRMModelProtocols)];
}

@end
