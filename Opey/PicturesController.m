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

  [UIView animateWithDuration:1.0
                        delay:0.0
                      options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionBeginFromCurrentState
                   animations:^ { self.profileView.alpha = 0.0; }
                   completion:^(BOOL finished) { if (finished) self.profileView.hidden = YES; }];
}

- (void)tableView:(UITableView *)table didEndDisplayingCell:(UITableViewCell *)cell
                                          forRowAtIndexPath:(NSIndexPath *)path {

  if (![cell isKindOfClass:ProfileCell.class])
    return;

  self.profileView.hidden = NO;
  [UIView animateWithDuration:1.0
                        delay:0.0
                      options:UIViewAnimationOptionCurveEaseInOut | UIViewAnimationOptionBeginFromCurrentState
                   animations:^ { self.profileView.alpha = 1.0; }
                   completion:NULL];
}

@end
