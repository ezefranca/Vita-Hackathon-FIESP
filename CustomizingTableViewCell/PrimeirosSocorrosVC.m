//
//  Created by Ezequiel Franca dos Santos on 26/04/14.
//  Copyright (c) 2014 Ezequiel Franca dos Santos. All rights reserved.
//

#import "PrimeirosSocorrosVC.h"
#import "Emergencias.h"
#import "EmergenciasCell.h"
#import "CardiacoVC.h"

@interface PrimeirosSocorrosVC ()

@end

@implementation PrimeirosSocorrosVC

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self showTabBar];
    
    self.movies = [NSMutableArray arrayWithCapacity:5];
    
    Emergencias *movie = [[Emergencias alloc] init];
    movie.title = @"Parada Cardiorespiratória";
    movie.year = @"";
    movie.poster = @"acidente.png";
    [self.movies addObject:movie];
    
    movie = [[Emergencias alloc] init];
    movie.title = @"Parada Cardiorespiratória";
    movie.year = @"";
    movie.poster = @"acidente.png";
    [self.movies addObject:movie];
    
    movie = [[Emergencias alloc] init];
    movie.title = @"Parada Cardiorespiratória";
    movie.year = @"";
    movie.poster = @"acidente.png";
    [self.movies addObject:movie];
    
    movie = [[Emergencias alloc] init];
    movie.title = @"Parada Cardiorespiratória";
    movie.year = @"";
    movie.poster = @"acidente.png";
    [self.movies addObject:movie];
    
    movie = [[Emergencias alloc] init];
    movie.title = @"Parada Cardiorespiratória";
    movie.year = @"";
    movie.poster = @"acidente.png";
    [self.movies addObject:movie];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.movies count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"EmergenciasCell";
    EmergenciasCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    Emergencias *movie = (self.movies)[indexPath.row];
    
    cell.titleLabel.text = movie.title;
    cell.yearLabel.text = movie.year;
    cell.posterImageView.image = [UIImage imageNamed:movie.poster];
    
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

- (void)didMoveToParentViewController:(UIViewController *)parent{
    [self showTabBar];
}

#pragma mark - Table view delegate



- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.

     //CardiacoVC *c = [[CardiacoVC alloc] init];
     // ...
     // Pass the selected object to the new view controller.
     //[self.navigationController pushViewController:c animated:YES];
}

#pragma mark - tabbar

- (void)hideTabBar {
    UITabBar *tabBar = self.tabBarController.tabBar;
    UIView *parent = tabBar.superview; // UILayoutContainerView
    UIView *content = [parent.subviews objectAtIndex:0];  // UITransitionView
    UIView *window = parent.superview;
    
    [UIView animateWithDuration:1
                     animations:^{
                         CGRect tabFrame = tabBar.frame;
                         tabFrame.origin.y = CGRectGetMaxY(window.bounds);
                         tabBar.frame = tabFrame;
                         content.frame = window.bounds;
                     }];
    
    // 1
}

- (void)showTabBar {
    UITabBar *tabBar = self.tabBarController.tabBar;
    UIView *parent = tabBar.superview; // UILayoutContainerView
    UIView *content = [parent.subviews objectAtIndex:0];  // UITransitionView
    UIView *window = parent.superview;
    
    [UIView animateWithDuration:0.5
                     animations:^{
                         CGRect tabFrame = tabBar.frame;
                         tabFrame.origin.y = CGRectGetMaxY(window.bounds) - CGRectGetHeight(tabBar.frame);
                         tabBar.frame = tabFrame;
                         
                         CGRect contentFrame = content.frame;
                         contentFrame.size.height -= tabFrame.size.height;
                     }];
    
    // 2
    
    
}
@end
