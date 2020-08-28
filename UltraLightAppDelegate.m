//
//  UltraLightAppDelegate.m
//  UltraLight
//
//  Created by Alex Garlock on 6/19/12.
//  Copyright (c) 2012 CPAG Studios. All rights reserved.
//

#import "UltraLightAppDelegate.h"

#import "UltraLightViewController.h"

@implementation UltraLightAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.viewController = [[UltraLightViewController alloc] initWithNibName:@"UltraLightViewController" bundle:nil];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{

}

- (void)applicationDidEnterBackground:(UIApplication *)application
{

}

- (void)applicationWillEnterForeground:(UIApplication *)application
{

}

- (void)applicationDidBecomeActive:(UIApplication *)application
{

}

- (void)applicationWillTerminate:(UIApplication *)application
{

}

@end
