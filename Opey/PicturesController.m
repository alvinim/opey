//
//  ViewController.m
//  Opey
//
//  Created by Alvin Yim on 5/11/2014.
//  Copyright (c) 2014 Enginer Partner. All rights reserved.
//

#import "PicturesController.h"
#import "ProfileCell.h"

@implementation PicturesController

#pragma mark - Table view delegate methods

- (void)tableView:(UITableView *)table willDisplayCell:(UITableViewCell *)cell
                                     forRowAtIndexPath:(NSIndexPath *)path {

  if (![cell isKindOfClass:ProfileCell.class])
    return;

  NSLog(@"appear");
}

- (void)tableView:(UITableView *)table didEndDisplayingCell:(UITableViewCell *)cell
                                          forRowAtIndexPath:(NSIndexPath *)path {

  if (![cell isKindOfClass:ProfileCell.class])
    return;

  NSLog(@"disappear");
}

@end
