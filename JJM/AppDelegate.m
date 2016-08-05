//
//  AppDelegate.m
//  JJM
//
//  Created by 黄光伟 on 15/12/22.
//  Copyright © 2015年 黄光伟. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    [self.window makeKeyAndVisible];
    
    
    
    // ******推荐
    RecommendViewController *recommendVC = [[RecommendViewController alloc]init];
    UINavigationController *recommendNaVC = [[UINavigationController alloc]initWithRootViewController:recommendVC];
    //   navigationBar 设置不透明
    recommendNaVC.navigationBar.translucent = NO;
    //    设置 navigationBar 背景图片
    [recommendNaVC.navigationBar setBackgroundImage:[UIImage imageNamed:@""] forBarMetrics:UIBarMetricsDefault];
    recommendNaVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"推荐" image:[UIImage imageNamed:@""] tag:1001];
    
    
    // ******  达人
    TarentoViewController *tarentoVC = [[TarentoViewController alloc]init];
    UINavigationController *tarentoNaVC = [[UINavigationController alloc]initWithRootViewController:tarentoVC];
    //   navigationBar 设置不透明
    tarentoNaVC.navigationBar.translucent = NO;
    //    设置 navigationBar 背景图片
    [tarentoNaVC.navigationBar setBackgroundImage:[UIImage imageNamed:@""] forBarMetrics:UIBarMetricsDefault];
    tarentoNaVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"达人" image:[UIImage imageNamed:@""] tag:1002];
    
    // ******  视听
    MovieAndMusicViewController *movieAndMusicVC = [[MovieAndMusicViewController alloc]init];
    UINavigationController *movieAndMusicNaVC = [[UINavigationController alloc]initWithRootViewController:movieAndMusicVC];
    //   navigationBar 设置不透明
    movieAndMusicNaVC.navigationBar.translucent = NO;
    //    设置 navigationBar 背景图片
    [movieAndMusicNaVC.navigationBar setBackgroundImage:[UIImage imageNamed:@""] forBarMetrics:UIBarMetricsDefault];
    movieAndMusicNaVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"视听" image:[UIImage imageNamed:@""] tag:1003];
    
    // ******  美文
    BeautifulArticleViewController *beautifulArticleVC = [[BeautifulArticleViewController alloc]init];
    UINavigationController *beautifulArticleNaVC = [[UINavigationController alloc]initWithRootViewController:beautifulArticleVC];
    //   navigationBar 设置不透明
    beautifulArticleNaVC.navigationBar.translucent = NO;
    //    设置 navigationBar 背景图片
    [beautifulArticleNaVC.navigationBar setBackgroundImage:[UIImage imageNamed:@""] forBarMetrics:UIBarMetricsDefault];
    beautifulArticleNaVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"美文" image:[UIImage imageNamed:@""] tag:1004];
    
    //    目的地
    DestinationViewController *destinationVC = [[DestinationViewController alloc]init];
    UINavigationController *destinationNaVC = [[UINavigationController alloc]initWithRootViewController:destinationVC];
    //   navigationBar 设置不透明
    destinationNaVC.navigationBar.translucent = NO;
    //    设置 navigationBar 背景图片
    [destinationNaVC.navigationBar setBackgroundImage:[UIImage imageNamed:@""] forBarMetrics:UIBarMetricsDefault];
    destinationNaVC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"目的地" image:[UIImage imageNamed:@""] tag:1005];
    
    
    //    TabBar
    UITabBarController *tabBarC = [[UITabBarController alloc]init];
    tabBarC.viewControllers = [NSArray arrayWithObjects: recommendNaVC, tarentoNaVC, movieAndMusicNaVC, beautifulArticleNaVC, destinationNaVC, nil];
    
    // 设置 tabBar 整体颜色
    // self.tabBarC.tabBar.barTintColor = [UIColor colorWithRed:202/255.0  green:219/255.0 blue:253/255.0 alpha:1.0];
    //                self.tabBarC.tabBar.barTintColor = [UIColor blackColor];
    //    设置选中的背景颜色
    tabBarC.tabBar.tintColor = [UIColor colorWithRed:61/255.0  green:149/255.0 blue:190/255.0 alpha:1.0];
    
    self.window.rootViewController = tabBarC;
    
    
    

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
