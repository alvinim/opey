//
//  HomeController.m
//  Opey
//
//  Created by Alvin Yim on 5/11/2014.
//  Copyright (c) 2014 Enginer Partner. All rights reserved.
//

#import "HomeController.h"
#import "PicturesController.h"

@implementation HomeController

#pragma mark - View controller methods

- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {
  if (![segue.identifier isEqualToString:@"container"])
    return;

  PicturesController *pictures = segue.destinationViewController;

  pictures.profileView = self.profileView;
}

@end
