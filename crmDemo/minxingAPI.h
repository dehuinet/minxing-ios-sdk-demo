//
//  minxingAPI.h
//  minxingAPI
//
//  Created by liyang on 14-8-13.
//  Copyright (c) 2014年 minxing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface minxingAPI : NSObject

+(void)startConversation:(NSArray *)userArray withApplication:(UIApplication*)application;

+(void)sendToCircle:(int)type withContent:(NSString *)content withApplication:(UIApplication*)application;

@end
