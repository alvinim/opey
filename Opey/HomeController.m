//
//  ViewController.m
//  Opey
//
//  Created by Alvin Yim on 5/11/2014.
//  Copyright (c) 2014 Enginer Partner. All rights reserved.
//

#import "HomeController.h"

@implementation HomeController

#pragma mark - Table view delegate methods

- (void)tableView:(UITableView *)table willDisplayCell:(UITableViewCell *)cell
                                     forRowAtIndexPath:(NSIndexPath *)path {
  NSLog(@"appear: %@", cell.class);
}

- (void)tableView:(UITableView *)table didEndDisplayingCell:(UITableViewCell *)cell
                                          forRowAtIndexPath:(NSIndexPath *)path {
  NSLog(@"disappear: %@", cell.class);
}

@end
