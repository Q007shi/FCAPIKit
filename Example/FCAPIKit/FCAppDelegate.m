//
//  FCAppDelegate.m
//  FCAPIKit
//
//  Created by 2585299617@qq.com on 02/21/2021.
//  Copyright (c) 2021 2585299617@qq.com. All rights reserved.
//

#import "FCAppDelegate.h"

#ifdef DEBUG
@import CocoaDebug;
#endif


@implementation FCAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
#ifdef DEBUG
    //--- If Want to Custom CocoaDebug Settings ---
    CocoaDebug.serverURL = @"google.com";
    CocoaDebug.ignoredURLs = @[@"aaa.com", @"bbb.com"];
    CocoaDebug.onlyURLs = @[@"ccc.com", @"ddd.com"];
    CocoaDebug.ignoredPrefixLogs = @[@"aaa", @"bbb"];
    CocoaDebug.onlyPrefixLogs = @[@"ccc", @"ddd"];
    CocoaDebug.logMaxCount = 1000;
    CocoaDebug.emailToRecipients = @[@"aaa@gmail.com", @"bbb@gmail.com"];
    CocoaDebug.emailCcRecipients = @[@"ccc@gmail.com", @"ddd@gmail.com"];
    CocoaDebug.mainColor = @"#fd9727";
    CocoaDebug.additionalViewController = UIViewController.new;
    
    //--- If Use Google's Protocol buffers ---
//    CocoaDebug.protobufTransferMap = @{
//        @"your_api_keywords_1": @[@"your_protobuf_className_1"],
//        @"your_api_keywords_2": @[@"your_protobuf_className_2"],
//        @"your_api_keywords_3": @[@"your_protobuf_className_3"]
//    };
#endif
    
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
