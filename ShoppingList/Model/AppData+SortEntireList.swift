//
//  AppData+SortEntireList.swift
//  ShoppingList
//
//  Created by Nathan Wainwright on 2018-08-23.
//  Copyright © 2018 Jamie. All rights reserved.
//

import Foundation

extension AppData{
  //currently sorts based on bool; will still need to sort based on that
  // need to add sort method to also sort based on alphabet of title?
  //
  // or somehow track order it was initially put in first place.
  
  // that would read the array
  // get a current index of current indexspots
  //
  
  // sorts by title/alphabet... need to add second condiaton to sort by bool
  
  
  //ALMOST THERE
  func sortEntireList() {
//    var tempArray = [ListItem]()
    var tempDoneItemArray = [ListItem]()
    var tempNotDoneItemArray = [ListItem]()
    // tempArray is entire table
    // break into two arrays, trueArray, and false Array, sort both by title, at end of func
    // APPEEND falseArray to true array; have that array be passed into currentArray
    for item in currentItemsArray {
      if (item.isCompleted == true) {
        tempDoneItemArray.append(item)
//        tempArray.append(item)
      } else {
//        tempArray.insert(item, at: 0)
        tempNotDoneItemArray.append(item)
      }
    }
    tempDoneItemArray = tempDoneItemArray.sorted { $0.title < $1.title }
    tempNotDoneItemArray = tempNotDoneItemArray.sorted { $0.title < $1.title }
    tempNotDoneItemArray.append(contentsOf: tempDoneItemArray)
    currentItemsArray = tempNotDoneItemArray
  }
  
  
//  //ALMOST THERE
//  func sortEntireList() {
//    var tempArray = [ListItem]()
//
//    tempArray.sorted { $0.title < $1.title }
//
//    for item in currentItemsArray {
//      if (item.isCompleted == true) {
//        print("TEST TRUE:      \(item.title)")
//
//        tempArray.append(item)
//      } else {
//        tempArray.insert(item, at: 0)
//        print("TEST FALSE:     \(item.title)")
//      }
//    }
//    currentItemsArray = tempArray
//  }
  
  
  
  
  
  //  UNTOUCHED FUNC INCASE THINGS GO SIDEWAYS
  //  func sortEntireList() {
  //    var tempArray = [ListItem]()
  //
  //    for item in currentItemsArray {
  //      if (item.isCompleted == true) {
  //        tempArray.append(item)
  //      } else {
  //        tempArray.insert(item, at: 0)
  //      }
  //    }
  //
  //    currentItemsArray = tempArray
  //  }
  
  
} // END -- AppData Extension
