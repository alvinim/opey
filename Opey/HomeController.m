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

- (void)viewDidLoad {
  id space = [UIBarButtonItem.alloc initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
                                                         target:nil
                                                         action:nil];

  id add = [UIBarButtonItem.alloc initWithBarButtonSystemItem:UIBarButtonSystemItemAdd
                                                        target:nil
                                                        action:nil];

  [self setToolbarItems:@[ space, add, space ]
               animated:YES];

  [self.navigationController setNavigationBarHidden:YES
                                           animated:YES];

  [super viewDidLoad];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {
  if (![segue.identifier isEqualToString:@"container"])
    return;

  PicturesController *pictures = segue.destinationViewController;

  pictures.profileView = self.profileView;
}

@end
