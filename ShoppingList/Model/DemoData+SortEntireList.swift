//
//  DemoData+SortEntireList.swift
//  ShoppingList
//
//  Created by Nathan Wainwright on 2018-08-23.
//  Copyright © 2018 Jamie. All rights reserved.
//

import Foundation

extension DemoData{
  
  func sortEntireList() {
    var tempArray = [ListItem]()
    for item in currentItemsArray {
      if (item.status == true) {
        tempArray.append(item)
      } else {
        tempArray.insert(item, at: 0)
      }
    }
    currentItemsArray = tempArray
  }
  
  
}
