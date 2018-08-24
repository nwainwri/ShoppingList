//
//  DemoData+SortEntireList.swift
//  ShoppingList
//
//  Created by Nathan Wainwright on 2018-08-23.
//  Copyright © 2018 Jamie. All rights reserved.
//

import Foundation

extension DemoData{
  //currently sorts based on bool; will still need to sort based on that
  // need to add sort method to also sort based on alphabet of title?
  //
  // or somehow track order it was initially put in first place.
  
  // that would read the array
  // get a current index of current indexspots
  //
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
