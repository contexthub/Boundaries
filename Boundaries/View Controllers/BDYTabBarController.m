//
//  BDYTabBarController.m
//  Boundaries
//
//  Created by Jeff Kibuule on 8/2/14.
//  Copyright (c) 2014 ChaiOne. All rights reserved.
//

#import "BDYTabBarController.h"

/**
 Tab bar indicies
 */
typedef NS_ENUM(NSUInteger, BDYTabBarIndex) {
    BDYTabBarMapIndex = 0,
    BDYTabBarListIndex,
    BDYTabBarAboutIndex
};

@implementation BDYTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.delegate = self;
    
    // Initially selected tab bar icon needs to have selected images
    UITabBarItem *tabBarItem = self.tabBar.items[0];
    tabBarItem.image = [UIImage imageNamed:@"MapTabBarIcon"];
    tabBarItem.selectedImage = [UIImage imageNamed:@"MapSelectedTabBarIcon"];
}

// Selected tab bar item should have selected tab bar item icons
- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController {
    
    switch ([tabBarController selectedIndex]) {
        case BDYTabBarMapIndex:
            viewController.tabBarItem.image = [UIImage imageNamed:@"MapTabBarIcon"];
            viewController.tabBarItem.selectedImage = [UIImage imageNamed:@"MapSelectedTabBarIcon"];
            
            break;
        case BDYTabBarListIndex:
            viewController.tabBarItem.image = [UIImage imageNamed:@"ListTabBarIcon"];
            viewController.tabBarItem.selectedImage = [UIImage imageNamed:@"ListSelectedTabBarIcon"];
            
            break;
        case BDYTabBarAboutIndex:
            viewController.tabBarItem.image = [UIImage imageNamed:@"AboutTabBarIcon"];
            viewController.tabBarItem.selectedImage = [UIImage imageNamed:@"AboutSelectedTabBarIcon"];
            
            break;
        default:
            
            break;
    }
}

@end