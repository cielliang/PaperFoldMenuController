//
//  AppDelegate.m
//  Demo
//
//  Created by honcheng on 26/10/12.
//  Copyright (c) 2012 Hon Cheng Muh. All rights reserved.
//

#import "AppDelegate.h"
#import "DemoMenuController.h"
#import "DemoRootViewController.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    _menuController = [[DemoMenuController alloc] initWithMenuWidth:250.0 numberOfFolds:3];
    [_menuController setDelegate:self];
    [self.window setRootViewController:_menuController];
    
    NSMutableArray *viewControllers = [NSMutableArray array];
    
    NSMutableArray *viewControllerA = [NSMutableArray array];
    NSMutableArray *viewControllerB = [NSMutableArray array];
    NSMutableArray *viewControllerC = [NSMutableArray array];
    
    for (int i=0; i<3; i++)
    {
        DemoRootViewController *rootViewController = [[DemoRootViewController alloc] init];
        [rootViewController setTitle:[NSString stringWithFormat:@"Root VC A %i", i+1]];
        UINavigationController *rootNavController = [[UINavigationController alloc] initWithRootViewController:rootViewController];
        [viewControllerA addObject:rootNavController];
    }
    [viewControllers addObject:viewControllerA];

    for (int i=0; i<2; i++)
    {
        DemoRootViewController *rootViewController = [[DemoRootViewController alloc] init];
        [rootViewController setTitle:[NSString stringWithFormat:@"Root VC B %i", i+1]];
        UINavigationController *rootNavController = [[UINavigationController alloc] initWithRootViewController:rootViewController];
        [viewControllerB addObject:rootNavController];
    }
    [viewControllers addObject:viewControllerB];
    
    for (int i=0; i<3; i++)
    {
        DemoRootViewController *rootViewController = [[DemoRootViewController alloc] init];
        [rootViewController setTitle:[NSString stringWithFormat:@"Root VC C %i", i+1]];
        UINavigationController *rootNavController = [[UINavigationController alloc] initWithRootViewController:rootViewController];
        [viewControllerC addObject:rootNavController];
    }
    [viewControllers addObject:viewControllerC];
    
    [_menuController setViewControllers:viewControllers];
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)paperFoldMenuController:(PaperFoldMenuController *)paperFoldMenuController didSelectViewController:(UIViewController *)viewController
{

}

@end
