//
//  AppDelegate.m
//  readyProductList
//
//  Created by bizopstech on 14-3-24.
//  Copyright (c) 2014年 com.bizopstech. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize productNotes;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    self.productNotes =   @[
                            @{@"introduction":@"Special care for specified cancer 10 years of payment, protection lasts as long as 20 years 500,000 protection, no health check is required! ", @"image":@"product1.png",@"Title":@"JinLi Beauty" },
                            
                            @{@"introduction":@"Special care for specified cancer 10 years of payment, protection lasts as long as 20 years 500,000 protection, no health check is required! ", @"image":@"product2.png",@"Title":@"JinLi Beauty" },
                            
                            @{@"introduction":@"Special care for specified cancer 10 years of payment, protection lasts as long as 20 years 500,000 protection, no health check is required! ", @"image":@"product3.png",@"Title":@"JinLi Beauty" },
                            
                            @{@"introduction":@"Special care for specified cancer 10 years of payment, protection lasts as long as 20 years 500,000 protection, no health check is required! ", @"image":@"product4.png",@"Title":@"JinLi Beauty" },
                            
                            @{@"introduction":@"Special care for specified cancer 10 years of payment, protection lasts as long as 20 years 500,000 protection, no health check is required! ", @"image":@"product1.png",@"Title":@"JinLi Beauty" },
                            
                            @{@"introduction":@"Special care for specified cancer 10 years of payment, protection lasts as long as 20 years 500,000 protection, no health check is required! ", @"image":@"product2.png",@"Title":@"JinLi Beauty" }
                            ];
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
