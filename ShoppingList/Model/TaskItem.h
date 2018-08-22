//
//  taskItem.h
//  ShoppingList
//
//  Created by Nathan Wainwright on 2018-08-22.
//  Copyright © 2018 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TaskItem : NSObject

//
//@property (nonatomic, weak) NSString *name;
//@property (nonatomic) int priority;
//@property (nonatomic) BOOL status;


- (nonnull instancetype)initWithTitle:(NSString *)title andAmount:(int)amount;


@end
