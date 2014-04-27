//
//  ViewController.m
//  Vita
//
//  Created by Ezequiel Franca dos Santos on 26/04/14.
//  Copyright (c) 2014 Ezequiel Franca dos Santos. All rights reserved.
//

#import "TelaVC.h"

@interface TelaVC ()

@end

@implementation TelaVC

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [[self tabBar] setTintColor:[UIColor whiteColor]];
    [[UITabBar appearance] setSelectedImageTintColor:[UIColor blackColor]];
    // Do any additional setup after loading the view.
    
    // set color of selected icons and text to red
    self.tabBar.tintColor = [UIColor redColor];
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys: [UIColor whiteColor], NSForegroundColorAttributeName, nil] forState:UIControlStateSelected];
    
    
    // set color of unselected text to green
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor], NSForegroundColorAttributeName, nil]
                                             forState:UIControlStateNormal];
    
    // set selected and unselected icons
    UITabBarItem *item0 = [self.tabBar.items objectAtIndex:0];
    UITabBarItem *item1 = [self.tabBar.items objectAtIndex:1];
    UITabBarItem *item2 = [self.tabBar.items objectAtIndex:2];
   
    // this way, the icon gets rendered as it is (thus, it needs to be green in this example)
    item0.image = [[UIImage imageNamed:@"home.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item1.image = [[UIImage imageNamed:@"mapas.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    item2.image = [[UIImage imageNamed:@"mais.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    // this icon is used for selected tab and it will get tinted as defined in self.tabBar.tintColor
    item0.selectedImage = [UIImage imageNamed:@"home.png"];
    item1.selectedImage = [UIImage imageNamed:@"maps.png"];
    item2.selectedImage = [UIImage imageNamed:@"mais.png"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
