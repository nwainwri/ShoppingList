//
//  AppData+SortEntireList.swift
//  ShoppingList
//
//  Created by Nathan Wainwright on 2018-08-23.
//  Copyright © 2018 Jamie. All rights reserved.
//

import Foundation

extension AppData{

////  //below will sort by alphabet (title) then also .isCompleted BOOL
//  func sortEntireList() {
////    var tempArray = [ListItem]()
//    var tempDoneItemArray = [ListItem]()
//    var tempNotDoneItemArray = [ListItem]()
//    // tempArray is entire table
//    // break into two arrays, trueArray, and false Array, sort both by title, at end of func
//    // APPEEND falseArray to true array; have that array be passed into currentArray
//    for item in currentItemsArray {
//      if (item.isCompleted == true) {
//        tempDoneItemArray.append(item)
////        tempArray.append(item)
//      } else {
////        tempArray.insert(item, at: 0)
//        tempNotDoneItemArray.append(item)
//      }
//    }
//    tempDoneItemArray = tempDoneItemArray.sorted { $0.dateStamp < $1.dateStamp }
//    tempNotDoneItemArray = tempNotDoneItemArray.sorted { $0.dateStamp < $1.dateStamp }
//    tempNotDoneItemArray.append(contentsOf: tempDoneItemArray)
//    currentItemsArray = tempNotDoneItemArray
//  }
  

//  start -- SORTS BY isCompleted BOOL
    func sortEntireList() {
      var tempArray = [ListItem]()

      for item in currentItemsArray {
        if (item.isCompleted == true) {
          tempArray.append(item)
        } else {
          tempArray.insert(item, at: 0)
        }
      }
      currentItemsArray = tempArray
    }
 //  end -- SORTS BY isCompleted BOOL
  
} // END -- AppData Extension
