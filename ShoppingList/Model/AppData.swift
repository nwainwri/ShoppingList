//
//  AppData.swift
//  ShoppingList
//
//  Created by Nathan Wainwright on 2018-08-22.
//  Copyright © 2018 Jamie. All rights reserved.
//

import UIKit

class AppData: NSObject {
  
  var currentItemsArray: [ListItem] = []
  
  override init() {
    super.init()
    readSavedItems()
  }
  
  
  func readSavedItems()
  {
    
    let results = ListItem.allObjects() as! RLMResults<ListItem>
    for index in 0..<results.count{
      currentItemsArray.append(results[index])
    }
    print("\(currentItemsArray)")
  }
  
  
  // REAME TO MODEL DATAone 
  
  
  //  //  TEST
  //  //  CODE
  //  //  TO BE REMOVED BY NATHAN
  //  //  DELETE ONCE TESTED -- DROP INTO VIEW CONTROLLER FOR TESTING -- WORKING METHODS FOR VIEW CONTROLLER TO CALL
  //  actualData.addListItem(titleString: "HELLO", newNumber: 45)
  //  actualData.addListItem(titleString: "This one", newNumber: 4)
  //  actualData.addListItem(titleString: "Cars", newNumber: 5)
  //  actualData.addListItem(titleString: "Trester", newNumber: 75)
  //  for item in actualData.demoData {
  //  print("TITLE: \(item.title) | " + "AMOUNT: \(item.amount) | " + "PRIORITY: \(item.priority) | " + "STATUS: \(item.status)")
  //  }
  //  print("----------")
  //  listArray.removeListItem(itemNumber: 2)
  //
  //  for item in actualData.demoData {
  //  print("TITLE: \(item.title) | " + "AMOUNT: \(item.amount) | " + "PRIORITY: \(item.priority) | " + "STATUS: \(item.status)")
  //  }
  //  print("----------")
  //  actualData.markListItem(indexnumber: 1)
  //  actualData.markListItem(indexnumber: 3)
  //  actualData.markListItem(indexnumber: 5)
  //  for item in actualData.demoData {
  //  print("TITLE: \(item.title) | " + "AMOUNT: \(item.amount) | " + "PRIORITY: \(item.priority) | " + "STATUS: \(item.status)")
  //
  //  }
  //  // FIRST SORT
  //  print("----------")
  //  actualData.sortEntireList()
  //  for item in actualData.demoData {
  //  print("TITLE: \(item.title) | " + "AMOUNT: \(item.amount) | " + "PRIORITY: \(item.priority) | " + "STATUS: \(item.status)")
  //  }
  //  //   STOP DELETEING HERE -- DROP INTO VIEW CONTROLLER FOR TESTING -- WORKING METHODS FOR VIEW CONTROLLER TO CALL
  
  
  //  var demoDataArray:[taskItem] = [firstTask, secondTask, thirdTask, fourthTask, fifthTask]
  
  //  var date: Date
  //  var now = Date()
  //  var dates: [Date]
  //  var dates = [Date]()
  //  var dates: [Date] = []
  
  //= [firstTask, secondTask, thirdTask, fourthTask, fifthTask]
  
  //point of this class is to init data for the demo of the app
  
  // properties needed:
  //      array of taskItem objects
  
}
