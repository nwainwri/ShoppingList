//
//  DemoData+AddToItemAmount.swift
//  ShoppingList
//
//  Created by Nathan Wainwright on 2018-08-23.
//  Copyright © 2018 Jamie. All rights reserved.
//

import Foundation

extension DemoData{
  
  func addToItemAmount(indexnumber: Int) {
    currentItemsArray[indexnumber].amount = currentItemsArray[indexnumber].amount + 1
  }
  
}
