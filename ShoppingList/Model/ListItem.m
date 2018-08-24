//
//  taskItem.m
//  ShoppingList
//
//  Created by Nathan Wainwright on 2018-08-22.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import "ListItem.h"

@interface ListItem()

@end

@implementation ListItem

- (nonnull instancetype)initWithTitle:(NSString *)title andAmount:(int)amount{
  self = [super init];
  if (self) {
    _title = title;
    _amount = amount;
    _priority = 0;
    _status = NO;
  }
  return self;
}
@end
