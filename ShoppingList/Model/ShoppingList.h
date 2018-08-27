//
//  ShoppingList.h
//  ShoppingList
//
//  Created by Jamie on 2018-08-26.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ListItem.h"
@import Realm;

RLM_ARRAY_TYPE(ListItem);

@interface ShoppingList : RLMObject

@property (nonatomic, strong) NSString *name;
@property RLMArray<ListItem *><ListItem> *rlmArray;


@end
