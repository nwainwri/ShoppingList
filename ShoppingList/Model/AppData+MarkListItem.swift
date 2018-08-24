//
//  AppData+MarkListItem.swift
//  ShoppingList
//
//  Created by Nathan Wainwright on 2018-08-23.
//  Copyright © 2018 Jamie. All rights reserved.
//

import Foundation

extension AppData{
  
  func markListItem(indexnumber: Int) {
    currentItemsArray[indexnumber].isCompleted = !currentItemsArray[indexnumber].isCompleted
  }
  
}
